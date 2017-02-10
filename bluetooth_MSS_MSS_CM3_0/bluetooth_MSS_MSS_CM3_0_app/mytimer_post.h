//The following are suggestions for functions and data structures you will likely need.

//structure holding virtual timer info
//this may vary depending on your implementation

#include "mss_timer.h"
#include "mss_gpio.h"
#include <stdlib.h>


//declare function pointer type
typedef void (*handler_t)(void);

typedef struct Timer {
    handler_t	handler;//function pointer (called after timer period)
    uint32_t	time;//time remaining for this counter
    uint32_t	period;//period
    uint32_t	mode;//continuous or one shot timer 1 = continuous, 0 = oneshot
    struct Timer*  next;//points to next timer
} timer_t;


timer_t *root = 0;

void disable_interrupts() {
	asm("cpsid i");
}

void enable_interrupts() {
	asm("cpsie i");
}

//used to initialize hardware
void start_hardware_timer(uint32_t period){
	MSS_TIM1_init(MSS_TIMER_ONE_SHOT_MODE);
	MSS_TIM1_load_immediate(period);
	MSS_TIM1_enable_irq();
};

//put new timer in list maintaining order least time remaining to most
void insert_timer(timer_t * newtimer){
	disable_interrupts();
	if (!root || root->time >= newtimer->time){
		newtimer->next = root;
		root = newtimer;
	}
	else{
		timer_t * current = root;
		while (current->next && current->next->time < newtimer->time)
			current = current->next;
		newtimer->next = current->next;
		current->next = newtimer;
	}
	enable_interrupts();
};

//add a continuous (periodic) timer to linked list.
void startTimerContinuous(handler_t handler, uint32_t period){
	timer_t *newtimer = (timer_t*)malloc(sizeof(timer_t));
	newtimer->handler = handler;
	newtimer->time = period;
	newtimer->period = period;
	newtimer->mode = 1;
	insert_timer(newtimer);
};
//example
//startTimerContinuous(&led0, 50000000);

//add a one shot timer to the linked list.
void startTimerOneshot(handler_t handler, uint32_t period){
	timer_t *newtimer = (timer_t*)malloc(sizeof(timer_t));
	newtimer->handler = handler;
	newtimer->time = period;
	newtimer->period = period;
	newtimer->mode = 0;
	insert_timer(newtimer);
};

//update down count with elapsed time, call fnc if timer zero, update continuous timers
//with new down count
void update_timers(void){
	timer_t* current = root;

	while (current->next) {
		current->next->time -= root->time;
		current = current->next;
	}

	timer_t* temp_root = root;
	root = root->next;
	if (temp_root->mode == 1){
		temp_root->time = temp_root->period;
		insert_timer(temp_root);
	}
	else {
		free(temp_root);
	}
	
	while(root && root->time == 0){
		update_timers();
	}
};




