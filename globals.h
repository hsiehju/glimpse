//
//  globals.h
//  test
//
//  Created by Justin Hsieh on 4/12/16.
//  Copyright (c) 2016 Justin Hsieh. All rights reserved.
//

#ifndef __test__globals__
#define __test__globals__

#include <stdio.h>

#define RX_BUFF_SIZE    64
#define TX_BUFF_SIZE    64

extern char ascii_to_value(char ascii);

// FRAME BUFFER
extern char frame_buffer[40][15];

// MAIN PAGE
extern char time[9];
extern char date[5];
extern char temp[4];
extern char icon[6][6];
extern uint8_t icon_selected;
extern char quotes_lib[5][93];
extern uint8_t num_of_quotes;
extern uint8_t quotes_full;

// TODO LIST
extern char todo_list[5][35];
extern uint8_t num_of_tasks;
extern uint8_t tasks_full;

// SONG
extern char song_name[35];
extern char artist[35];


// PAGE SELECTION
// 0 blank page
// 1 main page
// 2 todo list
// 3 song page
extern uint8_t page_selected;

#endif
