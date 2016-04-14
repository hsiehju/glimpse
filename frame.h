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


#define BLANKPAGE 			0
#define MAINPAGE 			1
#define TODOPAGE			2
#define SONGPAGE 			3

#define CLOUDY				0
#define MOON				1
#define PARTLY_CLOUDY		2
#define RAINY				3
#define SNOWY				4
#define SUNNY				5
#define PLAY				6
#define BACK				7
#define FORWARD				8
#define PAUSE				9


#define ICON_START_X		2
#define ICON_START_Y		1
#define ICON_END_X			7
#define ICON_END_Y			7

#define TEMP_START_X		9
#define TEMP_START_Y		4
#define TEMP_END_X			12
#define TEMP_END_Y			5

#define QUOTE_T_START_X		6
#define QUOTE_T_START_Y		9
#define QUOTE_T_END_X		21
#define QUOTE_T_END_Y		9

#define QUOTE_START_X		6
#define QUOTE_START_Y		11
#define QUOTE_END_X			35
#define QUOTE_END_Y			13

#define TIME_START_X		2
#define TIME_START_Y		1
#define TIME_END_X			7
#define TIME_END_Y			7

#define DATE_START_X		2
#define DATE_START_Y		1
#define DATE_END_X			7
#define DATE_END_Y			7

extern const uint8_t frame_size;


void send_frame();

void update_frame_buffer();

void update_page(uint8_t current_page, int gesture);

// MAIN PAGE
void update_time();

void update_quote();

void update_temperature();


// TODO LIST PAGE
void update_todo();


// SONG PAGE
void update_songname();

void update_songbuttons();

void timer_turnoff();

#endif /* FRAME_H_ */
