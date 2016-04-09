#include "mytimer.h"
#include <stdio.h>
#include <inttypes.h>
#include "drivers/mss_uart/mss_uart.h"
#include "drivers/mss_i2c/mss_i2c.h"
#include "gesture.h"

#define RX_BUFF_SIZE    64

char ascii_to_value(char ascii);

// update every 1 second
void update_time();

// update every 5 seconds
void update_temperature();

void update_page();

void update_frame_buffer();

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


int main()
{
	MSS_I2C_init(&g_mss_i2c1 , APDS9960_I2C_ADDR , MSS_I2C_PCLK_DIV_256 );

	gesture_init();
	while (1) {
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
	}


	uint8_t rx_buff[RX_BUFF_SIZE] = "";
	uint8_t tx_buff[RX_BUFF_SIZE] = "";

	size_t rx_size = 0;
	size_t tx_size = 0;

 	uint8_t msg[RX_BUFF_SIZE] = "";

 	//initialize the UART
 	MSS_UART_init(
 		&g_mss_uart0,
 		MSS_UART_9600_BAUD,
 		MSS_UART_DATA_8_BITS | MSS_UART_NO_PARITY | MSS_UART_ONE_STOP_BIT
 	);
 	MSS_UART_init(
 		&g_mss_uart1,
 		MSS_UART_9600_BAUD,
 		MSS_UART_DATA_8_BITS | MSS_UART_NO_PARITY | MSS_UART_ONE_STOP_BIT
 	);

 	 // TODO LIST BOOKKEEPING
 	unsigned x, y;
 	for(x = 0; x < 5; ++x) {
		for(y = 0; y < 35; ++y) {
			 todo_list[x][y] = 0;
		}
	}

 	// QUOTE BOOKKEEPING
 	for(x = 0; x < 5; ++x) {
		for(y = 0; y < 93; ++y) {
			quotes_lib[x][y] = 0;
		}
 	}

 	// FRAME BUFFER INITIALIZATION
 	for(x = 0; x < 40; ++x) {
 		for(y = 0; y < 15; ++y) {
 			frame_buffer[x][y] = 0;
 		}
 	}

 	startTimerContinuous(&update_frame_buffer, 10000); //10us
 	startTimerContinuous(&update_time, 100000000);	//1 second
 	startTimerContinuous(&update_temperature, 500000000);	//5 second

 	start_hardware_timer(root->time);
 	MSS_TIM1_start();


 	// BLUETOOTH polling
 	while (1) {
		rx_size = MSS_UART_get_rx( &g_mss_uart1, rx_buff, sizeof(rx_buff) );
		if(rx_size > 0){
			MSS_UART_polled_tx( &g_mss_uart0, rx_buff, rx_size);
			char mode = rx_buff[0];

			// MAIN PAGE
			if('M' == mode) {
				char command;
				char full_string[37];
				int index = 0;
				while (1) {
					while(1) {
						rx_size = MSS_UART_get_rx( &g_mss_uart1, rx_buff, sizeof(rx_buff));

						if(rx_size > 0) {
							MSS_UART_polled_tx( &g_mss_uart0, rx_buff, rx_size);
							if(rx_buff[0] == '\r') {
								full_string[index] = '\0';
								rx_size = 0;
								index = 0;
								break;
							}
							full_string[index] = rx_buff[0];
							index++;
						}
					}

					command = full_string[0];

					// time
					if(command == 't') {
						if((full_string[2] - '0') != 1 && (full_string[2] - '0') != 0) {
							char msg[38] = "Wrong time format <hour>:<min>:<sec>\n";
							MSS_UART_polled_tx( &g_mss_uart1, msg, 38);
						}

						if((full_string[5] - '0') != 0 && (full_string[5] - '0') != 1 &&
								(full_string[5] - '0') != 2 && (full_string[5] - '0') != 3 &&
								(full_string[5] - '0') != 4 && (full_string[5] - '0') != 5) {
							char msg[38] = "Wrong time format <hour>:<min>:<sec>\n";
							MSS_UART_polled_tx( &g_mss_uart1, msg, 38);
						}

						if((full_string[8] - '0') != 0 && (full_string[8] - '0') != 1 &&
								(full_string[8] - '0') != 2 && (full_string[8] - '0') != 3 &&
								(full_string[8] - '0') != 4 && (full_string[8] - '0') != 5) {
							char msg[38] = "Wrong time format <hour>:<min>:<sec>\n";
							MSS_UART_polled_tx( &g_mss_uart1, msg, 38);
						}

						disable_interrupts();
						time[0] = full_string[2];
						time[1] = full_string[3];

						time[3] = full_string[5];
						time[4] = full_string[6];

						time[6] = full_string[8];
						time[7] = full_string[9];
						enable_interrupts();
					}
					// date
					else if(command == 'd') {

					}
					// type of weather
					else if(command == 'w') {

					}
					else if(command == 'q') {
						break;
					}
				}
			}

			if(mode == 'T') {
				char command;
				char full_string[37];
				int index = 0;
				while (1) {
					while(1) {
						rx_size = MSS_UART_get_rx( &g_mss_uart1, rx_buff, sizeof(rx_buff));
						if(rx_size > 0) {
							if(rx_buff[0] == '\r') {
								full_string[index] = '\0';
								rx_size = 0;
								index = 0;
								break;
							}
							MSS_UART_polled_tx( &g_mss_uart0, rx_buff, rx_size);
							full_string[index] = rx_buff[0];
							index++;
						}
					}

					command = full_string[0];

					// add to do list
					// a <string>
					if(command == 'a') {
						if(tasks_full != 1) {
							// clear task
							unsigned i;
							for(i = 0; i < 35; ++i) {
								todo_list[num_of_tasks][i] = " ";
							}
							// read in instruction
							int index = 0;
							while(full_string[index + 2] != '\0') {
								todo_list[num_of_tasks][index] = full_string[index + 2];
								index++;
							}
							index++;
							todo_list[num_of_tasks][index] = '\0';

							// set box
							frame_buffer[1][5 + num_of_tasks * 2] = 800;// unchecked box code

							// write into frame buffer
							index = 0;
							while(todo_list[num_of_tasks][index] != '\0') {
								frame_buffer[index + 4][5 + num_of_tasks * 2] = todo_list[num_of_tasks][index];//ascii_to_value(todo_list[num_of_tasks][i]);
								index++;
							}

							if(num_of_tasks == 4) {
								tasks_full = 1;
							}
							else {
								num_of_tasks++;
							}
						}
						else {
							char msg[16] = "Tasks are full\n";
							MSS_UART_polled_tx( &g_mss_uart1, msg, 16);
						}
					}
					// check task
					// a <int>
					else if(command == 'c') {
						int index = 0;
						int task_number = 0;
						// read in instruction
						while(full_string[index + 2] != '\0') {
							task_number = atoi(full_string[index + 2]);
							index++;
						}

						// valid task
						if(task_number < num_of_tasks) {
							frame_buffer[1][5 + task_number * 2] = 800; // checked box code
						}
						else {
							// send message not task to check
						}
					}
					// delete
					// d <int>
					else if(command == 'd') {
						int index = 0;
						int task_number = 0;
						// read in instruction
						while(full_string[index + 2] != '\0') {
							task_number = atoi(full_string[index + 2]);
							index++;
						}

						if(task_number < num_of_tasks) {
							unsigned i;
							for(i = 0; i < 40; ++i) {
								frame_buffer[i][5 + task_number * 2] = frame_buffer[i][5 + (num_of_tasks - 1) * 2];
								frame_buffer[i][5 + (num_of_tasks - 1) * 2] = 0; // empty
							}
							for(i = 0; i < 34; ++i) {
								todo_list[task_number][i] = 0;
								todo_list[task_number][i] = todo_list[num_of_tasks - 1][i];
							}
							num_of_tasks--;
							tasks_full = 0;
						}
						else {
							// send message back no tasks to delete
						}
					}
					else if(command == 'q') {
						break;
					}
				}
			}

			// SONG PAGE
			else if(mode == 'S') {
				char command;
				char full_string[35];
				int index = 0;
				while (1) {
					while(1) {
						rx_size = MSS_UART_get_rx( &g_mss_uart1, rx_buff, sizeof(rx_buff));
						if(rx_size > 0) {
							if(rx_buff[0] == '\r') {
								full_string[index] = '\0';
								rx_size = 0;
								index = 0;
								break;
							}
							full_string[index] = rx_buff[0];
							index++;
						}
					}

					command = full_string[0];
					// update song name
					// n <string>
					if(command == 'n') {
						int index = 0;
						char song_name[30];
						// read in instruction
						while(full_string[index + 2] != '\0') {
							song_name[index] = full_string[index + 2];
							index++;
						}



					}
					// update artist name
					// a <string>
					else if(command == 'a') {

					}
					else if(command == 'q') {
						break;
					}
					// maybe add change color of play button

				}
			}


		 }

		 tx_size = MSS_UART_get_rx( &g_mss_uart0, tx_buff, sizeof(tx_buff));
		 if(tx_size > 0){
			 int index = 0;
			 while(tx_buff[0] != '\r') {
				 msg[index] = tx_buff[0];

				 MSS_UART_get_rx( &g_mss_uart0, tx_buff, sizeof(tx_buff));

				 index++;
			 }

			 MSS_UART_polled_tx( &g_mss_uart1, msg, index);
			 tx_size = 0;
		 }

	 }

 	/*
 	// BLUETOOTH THREAD
 	 while (1) {
		 rx_size = MSS_UART_get_rx( &g_mss_uart1, rx_buff, sizeof(rx_buff) );
		 if(rx_size > 0){
			char mode = rx_buff[0];

			// WEATHER PAGE
			if('W' == mode) {
				char command;
				char full_string[20];
				int index = 0;
				while (1) {
					while(1) {
						rx_size = MSS_UART_get_rx( &g_mss_uart1, rx_buff, sizeof(rx_buff));
						if(rx_size > 0) {
							if(rx_buff[0] == '\r') {
								full_string[index] = '\0';
								rx_size = 0;
								index = 0;
								break;
							}
							full_string[index] = rx_buff[0];
							index++;
						}
					}

					command = full_string[0];

					// time
					if(command == 't') {

					}
					// temperature fahrenheit
					else if(command == 'f') {

					}
					// date
					else if(command == 'd') {

					}
					// type of weather
					else if(command == 'w') {

					}
					else if(command == 'q') {
						break;
					}
				}
			}

			// TODO PAGE
			else if(mode == 'T') {
				char command;
				char full_string[37];
				int index = 0;
				while (1) {
					while(1) {
						rx_size = MSS_UART_get_rx( &g_mss_uart1, rx_buff, sizeof(rx_buff));
						if(rx_size > 0) {
							if(rx_buff[0] == '\r') {
								full_string[index] = '\0';
								rx_size = 0;
								index = 0;
								break;
							}
							full_string[index] = rx_buff[0];
							index++;
						}
					}

					command = full_string[0];

					// add to do list
					// a <string>
					if(command == 'a') {
						if(tasks_full != 1) {
							// clear task
							unsigned i;
							for(i = 0; i < 35; ++i) {
								todo_list[num_of_tasks][i] = " ";
							}
							// read in instruction
							int index = 0;
							while(full_string[index + 2] != '\0') {
								todo_list[num_of_tasks][index] = full_string[index + 2];
								index++;
							}
							index++;
							todo_list[num_of_tasks][index] = '\0';

							// set box
							frame_buffer[1][5 + num_of_tasks * 2] = 800;// unchecked box code

							// write into frame buffer
							index = 0;
							while(todo_list[num_of_tasks][index] != '\0') {
								frame_buffer[index + 4][5 + num_of_tasks * 2] = todo_list[num_of_tasks][index];//ascii_to_value(todo_list[num_of_tasks][i]);
								index++;
							}

							if(num_of_tasks == 4) {
								tasks_full = 1;
							}
							else {
								num_of_tasks++;
							}
						}
						else {
							// send message tasks full
						}
					}
					// check task
					// a <int>
					else if(command == 'c') {
						int index = 0;
						int task_number = 0;
						// read in instruction
						while(full_string[index + 2] != '\0') {
							task_number = atoi(full_string[index + 2]);
							index++;
						}

						// valid task
						if(task_number < num_of_tasks) {
							frame_buffer[1][5 + task_number * 2] = 800; // checked box code
						}
						else {
							// send message not task to check
						}
					}
					// delete
					// d <int>
					else if(command == 'd') {
						int index = 0;
						int task_number = 0;
						// read in instruction
						while(full_string[index + 2] != '\0') {
							task_number = atoi(full_string[index + 2]);
							index++;
						}

						if(task_number < num_of_tasks) {
							unsigned i;
							for(i = 0; i < 40; ++i) {
								frame_buffer[i][5 + task_number * 2] = frame_buffer[i][5 + (num_of_tasks - 1) * 2];
								frame_buffer[i][5 + (num_of_tasks - 1) * 2] = 0; // empty
							}
							for(i = 0; i < 34; ++i) {
								todo_list[task_number][i] = 0;
								todo_list[task_number][i] = todo_list[num_of_tasks - 1][i];
							}
							num_of_tasks--;
							tasks_full = 0;
						}
						else {
							// send message back no tasks to delete
						}
					}
					else if(command == 'q') {
						break;
					}
				}
			}
			// QUOTE PAGE
			else if(mode == 'Q') {
				char command;
				char full_string[95];
				int index = 0;
				while (1) {
					while(1) {
						rx_size = MSS_UART_get_rx( &g_mss_uart1, rx_buff, sizeof(rx_buff));
						if(rx_size > 0) {
							if(rx_buff[0] == '\r') {
								full_string[index] = '\0';
								rx_size = 0;
								index = 0;
								break;
							}
							full_string[index] = rx_buff[0];
							index++;
						}
					}

					command = full_string[0];
					// add to quote library
					// add <string>
					if(command == 'a') {
						if(quotes_full != 1) {
							// clear quote
							unsigned i;
							for(i = 0; i < 93; ++i) {
								quotes_lib[num_of_quotes][i] = " ";
							}

							// read in instruction
							char quote[93]; // 30 per line, 3 for ""\0
							quote[0] = '"';
							int index = 0;
							while(full_string[index + 2] != '\0') {
								quote[index] = full_string[index + 2];
								index++;
							}
							index++;
							quote[index] = '"';
							index++;
							quote[index] = '\0';

							index = 0;
							while(quote[index] != '\0') {
								quotes_lib[num_of_quotes][index] = quote[index];
								index++;
							}
							if(num_of_quotes == 4) {
								quotes_full = 1;
							}
							else {
								num_of_quotes++;
							}
						}
						else {
							// send quotes library full
						}

					}
					// select quote
					// s <int>
					else if(command == 's') {
						if(num_of_quotes != 0) {
							int index = 0;
							int quote_number = 0;
							// read in instruction
							while(full_string[index + 2] != '\0') {
								quote_number = atoi(full_string[index + 2]);
								index++;
							}
							index = 0;

							// write selected quote to buffer
							while(quotes_lib[quote_number][index] != '\0') {
								if(index <= 30) {
									frame_buffer[index + 6][11] = quotes_lib[quote_number][index];//ascii_to_value(quotes_lib[quote_number][index]);
								}
								else if(index > 30 && index <= 60) {
									frame_buffer[index + 6][12] = quotes_lib[quote_number][index];//ascii_to_value(quotes_lib[quote_number][index]);
								}
								else if(index > 60 && index <= 92) {
									frame_buffer[index + 6][13] = quotes_lib[quote_number][index];//ascii_to_value(quotes_lib[quote_number][index]);
								}
								index++;
							}
						}
						else {
							// send message no quotes in library
						}
					}
					else if(command == 'q') {
						break;
					}
				}
			}
			// SONG PAGE
			else if(mode == 'S') {
				char command;
				char full_string[35];
				int index = 0;
				while (1) {
					while(1) {
						rx_size = MSS_UART_get_rx( &g_mss_uart1, rx_buff, sizeof(rx_buff));
						if(rx_size > 0) {
							if(rx_buff[0] == '\r') {
								full_string[index] = '\0';
								rx_size = 0;
								index = 0;
								break;
							}
							full_string[index] = rx_buff[0];
							index++;
						}
					}

					command = full_string[0];
					// update song name
					// n <string>
					if(command == 'n') {
						int index = 0;
						char song_name[30];
						// read in instruction
						while(full_string[index + 2] != '\0') {
							song_name[index] = full_string[index + 2];
							index++;
						}



					}
					// update artist name
					// a <string>
					else if(command == 'a') {

					}
					else if(command == 'q') {
						break;
					}
					// maybe add change color of play button

				}
			}
			//MSS_UART_polled_tx( &g_mss_uart0, rx_buff, rx_size);
		 }



		 tx_size = MSS_UART_get_rx( &g_mss_uart0, tx_buff, sizeof(tx_buff));
		 if(tx_size > 0){
			 int index = 0;
			 while(tx_buff[0] != '\r') {
				 msg[index] = tx_buff[0];

				 MSS_UART_get_rx( &g_mss_uart0, tx_buff, sizeof(tx_buff));

				 index++;
			 }

			 MSS_UART_polled_tx( &g_mss_uart1, msg, index);
			 tx_size = 0;
		 }

 	 }


	*/
}


void disable_interrupts(void) {
	asm("cpsid i");
}

void enable_interrupts(void) {
	asm("cpsie i");
}

char ascii_to_value(char ascii) {
	if(43 <= ascii && ascii <= 122) {
		return ascii - 43;
	}
	else {
		return 63 - 43;
	}
}

// update every 1 second
void update_time() {
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

// update every 5 seconds
void update_temperature() {
	disable_interrupts();
	enable_interrupts();
}


void update_frame_buffer() {
	disable_interrupts();
	if(page_selected == 0) {
		// clear frame buffer
	}
	else if(page_selected == 1) {

		// ICON
		// FRAMEBUFFER start [6, 9]
		if(icon_selected == 0) {

		}
		else if(icon_selected == 1) {

		}
		else if(icon_selected == 2) {

		}
		else if(icon_selected == 3) {

		}
		else if(icon_selected == 4) {

		}
		else if(icon_selected == 5) {

		}

		// TIME
		// FRAMEBUFFER start [26, 1]

		// TEMP
		// FRAMEBUFFER start [9, 4]

		// DATE
		// FRAMEBUFFER start [26,4]

	}
	else if(page_selected  == 2) {

	}
	else if(page_selected == 3) {

	}


	enable_interrupts();
}

void timer_shutoff() {
	// after 30 seconds shut off
	disable_interrupts();
	enable_interrupts();
}
