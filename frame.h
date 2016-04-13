/*
 * frame.h
 *
 *  Created on: Apr 12, 2016
 *      Author: hsiehju
 */

#ifndef FRAME_H_
#define FRAME_H_

#include "gesture.h"
#include "mytimer.h"
#include "globals.h"


#define BLANKPAGE 0
#define MAINPAGE 1
#define TODOPAGE 2
#define SONGPAGE 3


void update_page(uint8_t page);

// MAIN PAGE
void update_time();

void update_weather();

void update_quote();

void update_temperature();


// TODO LIST PAGE
void update_todo();


// SONG PAGE
void update_songname();

void update_songbuttons();

void timer_turnoff();

#endif /* FRAME_H_ */
