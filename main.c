#include "drivers/mss_uart/mss_uart.h"
#include "drivers/mss_i2c/mss_i2c.h"
#include "drivers/mss_spi/mss_spi.h"
#include "drivers/mss_gpio/mss_gpio.h"

#include <stdio.h>
#include <inttypes.h>

#include "globals.h"
#include "mytimer.h"
#include "gesture.h"
#include "frame.h"


int main()
{

    //initialize the UART
	uint8_t rx_buff[RX_BUFF_SIZE] = "";
	uint8_t tx_buff[TX_BUFF_SIZE] = "";

	size_t rx_size = 0;
	size_t tx_size = 0;

	uint8_t msg[RX_BUFF_SIZE] = "";


    MSS_UART_init(&g_mss_uart0, MSS_UART_9600_BAUD, MSS_UART_DATA_8_BITS | MSS_UART_NO_PARITY | MSS_UART_ONE_STOP_BIT);
    MSS_UART_init(&g_mss_uart1, MSS_UART_9600_BAUD, MSS_UART_DATA_8_BITS | MSS_UART_NO_PARITY | MSS_UART_ONE_STOP_BIT);

    MSS_I2C_init(&g_mss_i2c1 , APDS9960_I2C_ADDR , MSS_I2C_PCLK_DIV_256 );



	MSS_SPI_init( &g_mss_spi1 );
	MSS_SPI_configure_master_mode(&g_mss_spi1, MSS_SPI_SLAVE_0, MSS_SPI_MODE1, MSS_SPI_PCLK_DIV_256, frame_size);

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
	startTimerContinuous(&update_time, 90000000);	//1 second
	startTimerContinuous(&update_temperature, 500000000);	//5 second

	start_hardware_timer(root->time);
	MSS_TIM1_start();

    MSS_GPIO_init();

    MSS_GPIO_config(MSS_GPIO_0, MSS_GPIO_IRQ_EDGE_NEGATIVE);

    MSS_GPIO_enable_irq(MSS_GPIO_0);

    int success = gesture_init();
    if(success == -1) {
        success = 0;
    }

    enable_gesture();

    // BLUETOOTH polling
    while (1) {
    	if(gesture_available == 1) {
			handle_gesture();
			gesture_available = 0;
		}

    	send_frame();


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
                    	if(gesture_available == 1) {
							handle_gesture();
							gesture_available = 0;
						}
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

                    // time
                    if(command == 't') {
                    	uint8_t error = 0;
                        if((full_string[2] - '0') != 1 && (full_string[2] - '0') != 0) {
                            char msg = 'E';
                            disable_interrupts();
                            MSS_UART_polled_tx( &g_mss_uart1, &msg, 1);
                            enable_interrupts();
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
                        }
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
                    	if(gesture_available == 1) {
							handle_gesture();
							gesture_available = 0;
						}
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
                    	if(gesture_available == 1) {
							handle_gesture();
							gesture_available = 0;
						}
                        rx_size = MSS_UART_get_rx( &g_mss_uart1, rx_buff, sizeof(rx_buff));
                        if(rx_size > 0) {
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
}



