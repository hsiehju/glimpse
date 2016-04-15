/*
 * frame.c
 *
 *  Created on: Apr 12, 2016
 *      Author: hsiehju
 */

#include "drivers/mss_uart/mss_uart.h"
#include "drivers/mss_i2c/mss_i2c.h"
#include "drivers/mss_spi/mss_spi.h"
#include "drivers/mss_gpio/mss_gpio.h"

#include "frame.h"

const uint8_t frame_size = 8;

void send_frame() {
	uint8_t x, y;
	unsigned char spi_frame[3000];
	unsigned long long index = 0;

	for(x = 0; x < 40; ++x) {
		for(y = 0; y < 15; ++y) {
			spi_frame[index] = 0b11111111;
			index++;
			spi_frame[index] = x;
			index++;
			spi_frame[index] = y;
			index++;
			spi_frame[index] = frame_buffer[x][y];
			index++;
			spi_frame[index] = 0b11111110;
			index++;
		}
	}


	for(index = 0; index < 3000; ++index) {
		MSS_SPI_set_slave_select( &g_mss_spi1, MSS_SPI_SLAVE_0 );
		//MSS_GPIO_set_output(MSS_GPIO_1, 0);
		MSS_SPI_transfer_frame(&g_mss_spi1, spi_frame[index]);
		//MSS_GPIO_set_output(MSS_GPIO_1, 1);
		MSS_SPI_clear_slave_select( &g_mss_spi1, MSS_SPI_SLAVE_0 );
	}

}


void update_frame_buffer() {
	uint32_t x;
	uint32_t y;

	for(x = 0; x < 40; ++x) {
		for(y = 0; y < 15; ++y) {
			frame_buffer[x][y] = 0;
		}
	}

	if(page_selected == 0) {
		// cleared already
	}

	// MAIN PAGE
	else if(page_selected == 1) {
		// WEATHER ICON
		// FRAMEBUFFER start (2, 1)
		icon_to_fb(icon_selected);
		// TIME
		// FRAMEBUFFER start (26, 1)
		large_number_to_fb(time[0], 26, 1);
		large_number_to_fb(time[1], 28, 1);
		large_number_to_fb(time[2], 30, 1);
		large_number_to_fb(time[3], 32, 1);
		large_number_to_fb(time[4], 34, 1);
		frame_buffer[36][1] = ascii_to_value(time[6]);
		frame_buffer[37][1] = ascii_to_value(time[7]);
		// DATE
		// FRAMEBUFFER start (29,3)
		frame_buffer[29][3] = ascii_to_value(date[0]);
		frame_buffer[30][3] = ascii_to_value(date[1]);
		frame_buffer[31][3] = ascii_to_value(date[2]);
		frame_buffer[32][3] = ascii_to_value(date[3]);
		frame_buffer[33][3] = ascii_to_value(date[4]);
		frame_buffer[34][3] = ascii_to_value(date[5]);
		frame_buffer[35][3] = ascii_to_value(date[6]);
		frame_buffer[36][3] = ascii_to_value(date[7]);
		frame_buffer[37][3] = ascii_to_value(date[8]);
		// TEMP
		// FRAMEBUFFER start (9,4)
		large_number_to_fb(temp[0], 9, 4);
		large_number_to_fb(temp[1], 11, 4);
		frame_buffer[13][4] = ascii_to_value(temp[2]);   
        // QUOTE
        // FRAMEBUFFER start (6, 8)
        uint8_t i;
        for(i = QUOTE_T_START_X; i < QUOTE_T_END_X; ++i) {
            frame_buffer[i][QUOTE_T_Y] = quote_title[i - QUOTE_T_START_X];
        }
        // finish quote
	}
    // TODO LIST
	else if(page_selected  == 2) {

	}
    // SONGPAGE
	else if(page_selected == 3) {

	}
}

void update_page(uint8_t current_page, int recv_gesture) {
    switch(current_page) {
        case BLANKPAGE: {
            page_selected = MAINPAGE;
        }
        case MAINPAGE: {
        	if(recv_gesture == DIR_LEFT) {
        		page_selected = TODOPAGE;
        	}
        	else if (recv_gesture == DIR_UP){
        		page_selected = SONGPAGE;
        	}
        	else if (recv_gesture == DIR_DOWN) {
        		// pause music
        	}
        	else {
        		page_selected = MAINPAGE;
        	}
        }
        case TODOPAGE: {
        	if(recv_gesture == DIR_RIGHT) {
				page_selected = MAINPAGE;
			}
			else if (recv_gesture == DIR_UP){
				page_selected = SONGPAGE;
			}
			else if (recv_gesture == DIR_DOWN) {
				// pause music
			}
			else {
				page_selected = TODOPAGE;
			}
        }
        case SONGPAGE: {
        	if(recv_gesture == DIR_RIGHT) {
				// next song
			}
			else if (recv_gesture == DIR_UP){
				// play/pause song
			}
			else if (recv_gesture == DIR_DOWN) {
				page_selected = MAINPAGE;
			}
			else {
				page_selected = SONGPAGE;
			}
        }
        default: {
            page_selected = MAINPAGE;
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

