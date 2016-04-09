/*
 * mytimer.c
 *
 *  Created on: Apr 5, 2016
 *      Author: hsiehju
 */

#include "mytimer.h"


timer *root = 0;

//used to initialize hardware
void start_hardware_timer(uint32_t period){
	MSS_TIM1_init(MSS_TIMER_ONE_SHOT_MODE);
	MSS_TIM1_load_immediate(period);
	MSS_TIM1_enable_irq();
};

//put new timer in list maintaining order least time remaining to most
void insert_timer(timer * newtimer){
	disable_interrupts();
	if (!root || root->time >= newtimer->time){
		newtimer->next = root;
		root = newtimer;
	}
	else{
		timer * current = root;
		while (current->next && current->next->time < newtimer->time)
			current = current->next;
		newtimer->next = current->next;
		current->next = newtimer;
	}
	enable_interrupts();
};

//add a continuous (periodic) timer to linked list.
void startTimerContinuous(handler_t handler, uint32_t period){
	timer *newtimer = (timer*)malloc(sizeof(timer));
	newtimer->handler = handler;
	newtimer->time = period;
	newtimer->period = period;
	newtimer->mode = 1;
	newtimer->next = 0;
	insert_timer(newtimer);
};
//example
//startTimerContinuous(&led0, 50000000);

//add a one shot timer to the linked list.
void startTimerOneshot(handler_t handler, uint32_t period){
	timer *newtimer = (timer*)malloc(sizeof(timer));
	newtimer->handler = handler;
	newtimer->time = period;
	newtimer->period = period;
	newtimer->mode = 0;
	newtimer->next = 0;
	insert_timer(newtimer);
};

//update down count with elapsed time, call fnc if timer zero, update continuous timers
//with new down count
void update_timers(void){
	timer* current = root;

	while (current->next) {
		current->next->time -= root->time;
		current = current->next;
	}

	timer* temp_root = root;
	root = root->next;
	if (temp_root->mode == 1){
		temp_root->time = temp_root->period;
		insert_timer(temp_root);
	}
	else {
		free(temp_root);
	}

	while(root && root->time == 0){
		root->handler();
		update_timers();
	}
};

void Timer1_IRQHandler( void ){
	root->handler();
	update_timers();
	MSS_TIM1_clear_irq();
	start_hardware_timer(root->time);
	MSS_TIM1_start();
}
