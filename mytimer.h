/*
 * timer.h
 *
 *  Created on: Apr 5, 2016
 *      Author: hsiehju
 */

#ifndef TIMER_H_
#define TIMER_H_

#include "mss_timer.h"
#include "mss_gpio.h"
#include <stdlib.h>

void disable_interrupts(void);

void enable_interrupts(void);

//declare function pointer type
typedef void (*handler_t)(void);

typedef struct Timer {
    handler_t	handler;//function pointer (called after timer period)
    uint32_t	time;//time remaining for this counter
    uint32_t	period;//period
    uint32_t	mode;//continuous or one shot timer 1 = continuous, 0 = oneshot
    struct Timer*  next;//points to next timer
} timer;

extern timer* root;

//used to initialize hardware
void start_hardware_timer(uint32_t period);

//put new timer in list maintaining order least time remaining to most
void insert_timer(timer * newtimer);

//add a continuous (periodic) timer to linked list.
void startTimerContinuous(handler_t handler, uint32_t period);


//add a one shot timer to the linked list.
void startTimerOneshot(handler_t handler, uint32_t period);

//update down count with elapsed time, call fnc if timer zero, update continuous timers
//with new down count
void update_timers(void);

void Timer1_IRQHandler( void );


#endif /* TIMER_H_ */