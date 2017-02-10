#include "drivers/mss_uart/mss_uart.h"
#include "drivers/mss_i2c/mss_i2c.h"
#include "drivers/mss_spi/mss_spi.h"
#include "drivers/mss_gpio/mss_gpio.h"
#include "drivers/CoreUARTapb/core_uart_apb.h"
#include "drivers/CoreUARTapb/coreuartapb_regs.h"

#include <stdio.h>
#include <inttypes.h>

#include "globals.h"
#include "mytimer.h"
#include "gesture.h"
#include "frame.h"
#include "visualizer.h"


int main()
{

    //initialize the UART
	uint8_t rx_buff[RX_BUFF_SIZE] = "";
	uint8_t tx_buff[TX_BUFF_SIZE] = "";

	size_t rx_size = 0;
	size_t tx_size = 0;

    MSS_UART_init(&g_mss_uart0, MSS_UART_9600_BAUD, MSS_UART_DATA_8_BITS | MSS_UART_NO_PARITY | MSS_UART_ONE_STOP_BIT);
    MSS_UART_init(&g_mss_uart1, MSS_UART_9600_BAUD, MSS_UART_DATA_8_BITS | MSS_UART_NO_PARITY | MSS_UART_ONE_STOP_BIT);

    uint16_t baud_value_2 = 650;
    addr_t base_addr_2 = 0x40050000;

    UART_init(&uart2, base_addr_2, baud_value_2, (DATA_8_BITS | NO_PARITY));

    MSS_I2C_init(&g_mss_i2c1 , APDS9960_I2C_ADDR , MSS_I2C_PCLK_DIV_256 );

	MSS_SPI_init( &g_mss_spi1 );
	MSS_SPI_configure_master_mode(&g_mss_spi1, MSS_SPI_SLAVE_0, MSS_SPI_MODE0, MSS_SPI_PCLK_DIV_128, frame_size);


	//INIT VISUALIZER
	init_visualizer();


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

    // TODO CHECK INITIALIZATION
    for(x = 0; x < 5; ++x) {
        todo_check[x] = 0;
    }

	startTimerContinuous(&update_frame_buffer, 80000000); //10us
	startTimerContinuous(&update_time, 90800000);	//1 second
	startTimerContinuous(&update_temperature, 500000000);	//5 second

	start_hardware_timer(root->time);
	MSS_TIM1_start();

    MSS_GPIO_init();

    MSS_GPIO_config(MSS_GPIO_0, MSS_GPIO_IRQ_EDGE_NEGATIVE);

    //MSS_GPIO_config(MSS_GPIO_1, MSS_GPIO_OUTPUT_MODE);

    MSS_GPIO_enable_irq(MSS_GPIO_0);

    int success = gesture_init();
    if(success == -1) {
        success = 0;
    }

    enable_gesture();

    // BLUETOOTH polling
    while (1) {
			visualize();
			// GESTURE
			if(gesture_available == 1) {
				handle_gesture();
				gesture_available = 0;
			}

			update_temperature();
			update_frame_buffer();
			// UPDATE FRAME
			send_frame();

			// ACCEPT COMMANDS
			rx_size = MSS_UART_get_rx( &g_mss_uart1, rx_buff, sizeof(rx_buff) );
			if(rx_size > 0){
				MSS_UART_polled_tx( &g_mss_uart0, rx_buff, rx_size);
				char mode = rx_buff[0];

				// MAIN PAGE
				if('M' == mode) {
					char msg = 'A';
					MSS_UART_polled_tx( &g_mss_uart1, &msg, 1);
					char command;
					char full_string[37];
					int index = 0;
					while (1) {
						while(1) {
							if(gesture_available == 1) {
								handle_gesture();
								gesture_available = 0;
							}

							send_frame();

							rx_size = MSS_UART_get_rx( &g_mss_uart1, rx_buff, sizeof(rx_buff));

							if(rx_size > 0) {
								MSS_UART_polled_tx( &g_mss_uart0, rx_buff, rx_size);
								if(rx_buff[0] == '\0') {
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
						uint8_t error = 0;
						// time
						if(command == 't') {

							if((full_string[2] - '0') != 1 && (full_string[2] - '0') != 0) {
								char msg = 'E';
								MSS_UART_polled_tx( &g_mss_uart1, &msg, 1);
								error = 1;
							}

							else if((full_string[5] - '0') != 0 && (full_string[5] - '0') != 1 &&
							   (full_string[5] - '0') != 2 && (full_string[5] - '0') != 3 &&
							   (full_string[5] - '0') != 4 && (full_string[5] - '0') != 5) {
								char msg = 'E';
								MSS_UART_polled_tx( &g_mss_uart1, &msg, 1);
								error = 1;
							}

							else if((full_string[8] - '0') != 0 && (full_string[8] - '0') != 1 &&
							   (full_string[8] - '0') != 2 && (full_string[8] - '0') != 3 &&
							   (full_string[8] - '0') != 4 && (full_string[8] - '0') != 5) {
								char msg = 'E';
								MSS_UART_polled_tx( &g_mss_uart1, &msg, 1);
								error = 1;
							}
							if(error == 0) {
								disable_interrupts();
								time[0] = full_string[2];
								time[1] = full_string[3];

								time[3] = full_string[5];
								time[4] = full_string[6];

								time[6] = full_string[8];
								time[7] = full_string[9];
								enable_interrupts();
								char msg = 'A';
								MSS_UART_polled_tx( &g_mss_uart1, &msg, 1);
							}
						}
						// date
						else if(command == 'd') {
							if(full_string[0] < 65  || full_string[0] > 90) {
								char msg = 'E';
								MSS_UART_polled_tx( &g_mss_uart1, &msg, 1);
								error = 1;
							}

							else if(full_string[1] < 65  || full_string[2] > 90) {
								char msg = 'E';
								MSS_UART_polled_tx( &g_mss_uart1, &msg, 1);
								error = 1;
							}

							else if(full_string[2] < 65  || full_string[2] > 90) {
								char msg = 'E';
								MSS_UART_polled_tx( &g_mss_uart1, &msg, 1);
								error = 1;
							}

							else if((full_string[4] - '0') != 1 && (full_string[4] - '0') != 0) {
								char msg = 'E';
								MSS_UART_polled_tx( &g_mss_uart1, &msg, 1);
								error = 1;
							}

							else if((full_string[5] - '0') != 0 && (full_string[5] - '0') != 1 &&
							   (full_string[5] - '0') != 2 && (full_string[5] - '0') != 3 &&
							   (full_string[5] - '0') != 4 && (full_string[5] - '0') != 5 &&
							   (full_string[5] - '0') != 6 && (full_string[5] - '0') != 7 &&
							   (full_string[5] - '0') != 8 && (full_string[5] - '0') != 9) {
								char msg = 'E';
								MSS_UART_polled_tx( &g_mss_uart1, &msg, 1);
								error = 1;
							}

							else if(full_string[6] != ' ') {
								char msg = 'E';
								MSS_UART_polled_tx( &g_mss_uart1, &msg, 1);
								error = 1;
							}

							else if((full_string[7] - '0') != 0 && (full_string[7] - '0') != 1 &&
							   (full_string[7] - '0') != 2 && (full_string[7] - '0') != 3) {
								char msg = 'E';
								MSS_UART_polled_tx( &g_mss_uart1, &msg, 1);
								error = 1;
							}


							else if((full_string[8] - '0') != 0 && (full_string[8] - '0') != 1 &&
							   (full_string[8] - '0') != 2 && (full_string[8] - '0') != 3 &&
							   (full_string[8] - '0') != 4 && (full_string[8] - '0') != 5 &&
							   (full_string[8] - '0') != 6 && (full_string[8] - '0') != 7 &&
							   (full_string[8] - '0') != 8 && (full_string[8] - '0') != 9) {
								char msg = 'E';
								MSS_UART_polled_tx( &g_mss_uart1, &msg, 1);
								error = 1;
							}
							if(error == 0) {
								disable_interrupts();
								date[0] = full_string[2];
								date[1] = full_string[3];
								date[2] = full_string[4];

								date[4] = full_string[6];
								date[5] = full_string[7];

								date[7] = full_string[9];
								date[8] = full_string[10];
								enable_interrupts();
								char msg = 'A';
								MSS_UART_polled_tx( &g_mss_uart1, &msg, 1);
							}
						}
						// type of weather
						else if(command == 'w') {
							if((full_string[2] - '0') != 0 && (full_string[2] - '0') != 1 &&
							   (full_string[2] - '0') != 2 && (full_string[2] - '0') != 3 &&
							   (full_string[2] - '0') != 4 && (full_string[2] - '0') != 5 &&
							   (full_string[2] - '0') != 6 && (full_string[2] - '0') != 7 &&
							   (full_string[2] - '0') != 8 && (full_string[2] - '0') != 9) {
								char msg = 'E';
								MSS_UART_polled_tx( &g_mss_uart1, &msg, 1);
								error = 1;
							}
							else if (full_string[1] != ' ') {
								char msg = 'E';
								MSS_UART_polled_tx( &g_mss_uart1, &msg, 1);
								error = 1;
							}
							if(error == 0) {
								disable_interrupts();
								icon_selected = full_string[2] - '0';
								enable_interrupts();
								char msg = 'A';
								MSS_UART_polled_tx( &g_mss_uart1, &msg, 1);
							}
						}
						// switch quote
						else if(command == 's') {
							if((full_string[2] - '0') != 0 && (full_string[2] - '0') != 1 &&
							   (full_string[2] - '0') != 2 && (full_string[2] - '0') != 3 &&
							   (full_string[2] - '0') != 4) {
								char msg = 'E';
								MSS_UART_polled_tx( &g_mss_uart1, &msg, 1);
								error = 1;
							}
							else if (full_string[1] != ' ') {
								char msg = 'E';
								MSS_UART_polled_tx( &g_mss_uart1, &msg, 1);
								error = 1;
							}

							if(error == 0) {
								disable_interrupts();
								quote_selected = full_string[2] - '0';
								enable_interrupts();
								char msg = 'A';
								MSS_UART_polled_tx( &g_mss_uart1, &msg, 1);
							}
						}
						else if(command == 'q') {
							break;
						}
					}
				}
				// TODO PAGE
				else if (mode == 'T') {
					char msg = 'A';
					MSS_UART_polled_tx( &g_mss_uart1, &msg, 1);
					char command;
					char full_string[37];
					int index = 0;
					while (1) {
						while(1) {
							if(gesture_available == 1) {
								handle_gesture();
								gesture_available = 0;
							}

							send_frame();

							rx_size = MSS_UART_get_rx( &g_mss_uart1, rx_buff, sizeof(rx_buff));
							if(rx_size > 0) {
								if(rx_buff[0] == '\0') {
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
									todo_list[num_of_tasks][i] = 0;
								}
								// read in instruction
								int index = 0;
								while(full_string[index + 2] != '\0') {
									todo_list[num_of_tasks][index] = full_string[index + 2];
									index++;
								}
								index++;
								todo_list[num_of_tasks][index] = '\0';

								if(num_of_tasks == 4) {
									tasks_full = 1;
								}
								else {
									num_of_tasks++;
								}
							}
							else {
								char msg = 'E';
								MSS_UART_polled_tx( &g_mss_uart1, &msg, 1);
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

							}
							else {
								char msg = 'E';
								MSS_UART_polled_tx( &g_mss_uart1, &msg, 1);
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
				else if(mode == 'S') {
					char msg = 'A';
					MSS_UART_polled_tx( &g_mss_uart1, &msg, 1);
					char command;
					int index = 0;

					// use rx_buff to read in song name or artist

				}

				else {
					char msg = 'E';
					MSS_UART_polled_tx( &g_mss_uart1, &msg, 1);
				}
			}
    }
}




