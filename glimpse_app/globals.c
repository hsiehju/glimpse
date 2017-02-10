/*
 * globals.c
 *
 *  Created on: Apr 12, 2016
 *      Author: hsiehju
 */

#include "drivers/mss_gpio/mss_gpio.h"
#include "globals.h"
#include "gesture.h"
#include "frame.h"

// FRAME BUFFER
unsigned frame_buffer[40][15];

// MAIN PAGE
char time[9] = "11:27:00";
char date[10] = "JAN 01,16";
char temp[4] = "73F";
uint8_t icon_selected = 4;
const char quote_title[17] = "QUOTE OF THE DAY";
char quotes_lib[5][93];
uint8_t quote_selected = 0;

// TODO LIST
const char todo_title[10] = "TODO LIST";
char todo_list[5][35];
char todo_check[5];
uint8_t num_of_tasks = 0;
uint8_t tasks_full = 0;

// SONG
char song_name[40];
char artist[40];

// INT
uint8_t gesture_available = 0;
int gesture = -1;

UART_instance_t uart2;

// PAGE SELECTION
// 0 blank page
// 1 main page
// 2 todo list
// 3 song page
uint8_t page_selected = 1;

void GPIO0_IRQHandler(){
   gesture_available = 1;
   MSS_GPIO_clear_irq( MSS_GPIO_0 );
}

char ascii_to_value(char ascii) {
	if(ascii == 32) {
		return 0;
	}
    if(43 <= ascii && ascii <= 122) {
        return ascii - 43;
    }
    else {
        return 63 - 43;
    }
}

char large_number_to_fb(char ascii, uint8_t x, uint8_t y) {

	if(ascii == '0') {
		frame_buffer[x][y] = 80;
		frame_buffer[x+1][y] = 81;
		frame_buffer[x][y+1] = 82;
		frame_buffer[x+1][y+1] = 83;
	}
	else if(ascii == '1') {
		frame_buffer[x][y] = 84;
		frame_buffer[x+1][y] = 85;
		frame_buffer[x][y+1] = 86;
		frame_buffer[x+1][y+1] = 87;
	}
	else if(ascii == '2') {
		frame_buffer[x][y] = 88;
		frame_buffer[x+1][y] = 89;
		frame_buffer[x][y+1] = 90;
		frame_buffer[x+1][y+1] = 91;
	}
	else if(ascii == '3') {
		frame_buffer[x][y] = 92;
		frame_buffer[x+1][y] = 93;
		frame_buffer[x][y+1] = 94;
		frame_buffer[x+1][y+1] = 95;
	}
	else if(ascii == '4') {
		frame_buffer[x][y] = 96;
		frame_buffer[x+1][y] = 97;
		frame_buffer[x][y+1] = 98;
		frame_buffer[x+1][y+1] = 99;
	}
	else if(ascii == '5') {
		frame_buffer[x][y] = 100;
		frame_buffer[x+1][y] = 101;
		frame_buffer[x][y+1] =102;
		frame_buffer[x+1][y+1] = 103;
	}
	else if(ascii == '6') {
		frame_buffer[x][y] = 104;
		frame_buffer[x+1][y] = 105;
		frame_buffer[x][y+1] = 106;
		frame_buffer[x+1][y+1] = 107;
	}
	else if(ascii == '7') {
		frame_buffer[x][y] = 108;
		frame_buffer[x+1][y] = 109;
		frame_buffer[x][y+1] = 110;
		frame_buffer[x+1][y+1] = 111;
	}
	else if(ascii == '8') {
		frame_buffer[x][y] = 112;
		frame_buffer[x+1][y] = 113;
		frame_buffer[x][y+1] = 114;
		frame_buffer[x+1][y+1] = 115;
	}
	else if(ascii == '9') {
		frame_buffer[x][y] = 116;
		frame_buffer[x+1][y] = 117;
		frame_buffer[x][y+1] = 118;
		frame_buffer[x+1][y+1] = 119;
	}
	else if(ascii == ':') {
		frame_buffer[x][y] = 120;
		frame_buffer[x+1][y] = 121;
		frame_buffer[x][y+1] = 122;
		frame_buffer[x+1][y+1] = 123;
	}
	else {
		frame_buffer[x][y] = 80;
		frame_buffer[x+1][y] = 81;
		frame_buffer[x][y+1] = 82;
		frame_buffer[x+1][y+1] = 83;
	}
}

char icon_to_fb(uint8_t icon) {
	uint8_t x;
	uint8_t y;
	unsigned icon_value = 0;

	switch(icon) {
		case CLOUDY: {
			icon_value = 124;
			for(y = ICON_START_Y; y < ICON_END_Y; ++y) {
				for(x = ICON_START_X; x <= ICON_END_X; ++x) {
					frame_buffer[x][y] = icon_value;
					++icon_value;
				}
			}
			break;
		}
		case MOON: {
			icon_value = 142;
			for(y = ICON_START_Y; y < ICON_END_Y; ++y) {
				for(x = ICON_START_X; x <= ICON_END_X; ++x) {
					frame_buffer[x][y] = icon_value;
					++icon_value;
				}
			}
			break;
		}
		case PARTLY_CLOUDY: {
			icon_value = 160;
			for(y = ICON_START_Y; y < ICON_END_Y; ++y) {
				for(x = ICON_START_X; x <= ICON_END_X; ++x) {
					frame_buffer[x][y] = icon_value;
					++icon_value;
				}
			}
			break;
		}
		case RAINY: {
			icon_value = 178;
			for(y = ICON_START_Y; y < ICON_END_Y; ++y) {
				for(x = ICON_START_X; x <= ICON_END_X; ++x) {
					frame_buffer[x][y] = icon_value;
					++icon_value;
				}
			}
			break;
		}
		case SNOWY: {
			icon_value = 196;
			for(y = ICON_START_Y; y < ICON_END_Y; ++y) {
				for(x = ICON_START_X; x <= ICON_END_X; ++x) {
					frame_buffer[x][y] = icon_value;
					++icon_value;
				}
			}
			break;
		}
		case SUNNY: {
			icon_value = 214;
			for(y = ICON_START_Y; y < ICON_END_Y; ++y) {
				for(x = ICON_START_X; x <= ICON_END_X; ++x) {
					frame_buffer[x][y] = icon_value;
					++icon_value;
				}
			}
			break;
		}
		default: {
			icon_value = 214;
			for(y = ICON_START_Y; y < ICON_END_Y; ++y) {
				for(x = ICON_START_X; x <= ICON_END_X; ++x) {
					frame_buffer[x][y] = icon_value;
					++icon_value;
				}
			}
			break;
		}
	}
}
