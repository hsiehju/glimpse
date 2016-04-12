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

// update every 1 second
void update_time() {
    disable_interrupts();
    
    uint32_t time_sec = 0;
    uint32_t time_min = 0;
    uint32_t time_hour = 0;
    
    time_hour += atoi(time);
    time_min += atoi(time + 3);
    time_sec += atoi(time + 6);
    
    if(time_sec == 59) {
        time_sec = 0;
        if(time_min == 59) {
            time_min = 0;
            if(time_hour == 12) {
                time_hour = 0;
            }
            else {
                time_hour++;
            }
        }
        else {
            time_min++;
        }
    }
    else {
        time_sec++;
    }
    
    if(time_hour <= 9) {
        time[0] = '0';
        time[1] = time_hour + '0';
        time[2] = ':';
    }
    else {
        time[0] = '1';
        time[1] = time_hour % 10 + '0';
        time[2] = ':';
    }
    
    if(time_min <= 9) {
        time[3] = '0';
        time[4] = time_min % 10 + '0';
        time[5] = ':';
    }
    else if(time_min <= 19) {
        time[3] = '1';
        time[4] = time_min % 10 + '0';
        time[5] = ':';
    }
    else if(time_min <= 29) {
        time[3] = '2';
        time[4] = time_min % 10 + '0';
        time[5] = ':';
    }
    else if(time_min <= 39) {
        time[3] = '3';
        time[4] = time_min % 10 + '0';
        time[5] = ':';
    }
    else if(time_min <= 49) {
        time[3] = '4';
        time[4] = time_min % 10 + '0';
        time[5] = ':';
    }
    
    else if(time_min <= 59) {
        time[3] = '5';
        time[4] = time_min % 10 + '0';
        time[5] = ':';
    }
    
    
    if(time_sec <= 9) {
        time[6] = '0';
        time[7] = time_sec + '0';
    }
    else if(time_sec <= 19) {
        time[6] = '1';
        time[7] = time_sec % 10 + '0';
    }
    else if(time_sec <= 29) {
        time[6] = '2';
        time[7] = time_sec % 10 + '0';
    }
    else if(time_sec <= 39) {
        time[6] = '3';
        time[7] = time_sec % 10 + '0';
    }
    else if(time_sec <= 49) {
        time[6] = '4';
        time[7] = time_sec % 10 + '0';
    }
    
    else if(time_sec <= 59) {
        time[6] = '5';
        time[7] = time_sec % 10 + '0';
    }
    
    
    enable_interrupts();
}
