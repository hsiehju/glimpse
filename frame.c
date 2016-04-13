/*
 * frame.c
 *
 *  Created on: Apr 12, 2016
 *      Author: hsiehju
 */

#include "frame.h"

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
// update every 1 second
void update_time(void) {
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

void timer_turnoff() {

}

