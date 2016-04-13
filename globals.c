/*
 * globals.c
 *
 *  Created on: Apr 12, 2016
 *      Author: hsiehju
 */

#include "drivers/mss_gpio/mss_gpio.h"
#include "globals.h"
#include "gesture.h"

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
uint8_t quotes_full = 0;

// TODO LIST
char todo_list[5][35];
uint8_t num_of_tasks = 0;
uint8_t tasks_full = 0;

// SONG
char song_name[35];
char artist[35];


// PAGE SELECTION
// 0 blank page
// 1 main page
// 2 todo list
// 3 song page
uint8_t page_selected = 0;

void GPIO0_IRQHandler(){
    disable_interrupts();

    if(isGestureAvailable()) {
        int gesture = readGesture();
        if(gesture == DIR_UP) {
            gesture = 6;
        }
        else if(gesture == DIR_DOWN) {
            gesture = 6;
        }
        else if(gesture == DIR_LEFT) {
            gesture = 6;
        }
        else if(gesture == DIR_RIGHT) {
            gesture = 6;
        }
        else if(gesture == DIR_NEAR) {
            gesture = 6;
        }
        else if(gesture == DIR_FAR) {
            gesture = 6;
        }
        else {
            gesture = 6;
        }
    }

    MSS_GPIO_clear_irq( MSS_GPIO_0 );

    enable_interrupts();
}

char ascii_to_value(char ascii) {
    if(43 <= ascii && ascii <= 122) {
        return ascii - 43;
    }
    else {
        return 63 - 43;
    }
}
