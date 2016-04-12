//
//  frame.c
//  test
//
//  Created by Justin Hsieh on 4/12/16.
//  Copyright (c) 2016 Justin Hsieh. All rights reserved.
//

#include "frame.h"
#include "globals.h"

#define BLANKPAGE 0
#define MAINPAGE 1
#define TODOPAGE 2
#define SONGPAGE 3

void update_page(uint8_t page) {
    switch(page) {
        case BLANKPAGE: {
            page_selected = BLANKPAGE;
        }
        case MAINPAGE: {
            page_selected = MAINPAGE;
        }
        case TODOPAGE: {
            page_selected = TODOPAGE;
        }
        case SONGPAGE: {
            page_selected = SONGPAGE;
        }
        default: {
            page_selected = BLANKPAGE;
        }
    }
}


// MAIN PAGE
void update_time() {
    
}

void update_weather() {
    
}

void update_quote() {
    
}

void update_temperature() {
    
}


// TODO LIST PAGE
void update_todo() {
    
}


// SONG PAGE
void update_songname() {
    
}

void update_songbuttons() {
    
}
