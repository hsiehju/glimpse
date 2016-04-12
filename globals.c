//
//  globals.c
//  test
//
//  Created by Justin Hsieh on 4/12/16.
//  Copyright (c) 2016 Justin Hsieh. All rights reserved.
//

#include "globals.h"





char ascii_to_value(char ascii);

// FRAME BUFFER
char frame_buffer[40][15];

// MAIN PAGE
char time[9] = "12:00:00";
char date[5] = "JAN 1";
char temp[4] = "73F";
char icon[6][6];
uint8_t icon_selected = 0;
char quotes_lib[5][93];
uint8_t num_of_quotes = 0;
int quotes_full = 0;

// TODO LIST
char todo_list[5][35];
uint8_t num_of_tasks = 0;
int tasks_full = 0;

// SONG
char song_name[35];
char artist[35];


// PAGE SELECTION
// 0 blank page
// 1 main page
// 2 todo list
// 3 song page
uint8_t page_selected = 0;
