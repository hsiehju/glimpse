//
//  frame.h
//  test
//
//  Created by Justin Hsieh on 4/12/16.
//  Copyright (c) 2016 Justin Hsieh. All rights reserved.
//

#ifndef FRAME_H_
#define FRAME_H_

#include "gesture.h"
#include "mytimer.h"
#include "frame.h"



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



#endif
