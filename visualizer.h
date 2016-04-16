/*
 * visualizer.h
 *
 *  Created on: Apr 16, 2016
 *      Author: hsiehju
 */
#include <stdio.h>
#include <math.h>
#include "drivers/mss_uart/mss_uart.h"
#include "drivers/mss_gpio/mss_gpio.h"
#include "drivers/mss_ace/mss_ace.h"
#include "drivers/CoreUARTapb/core_uart_apb.h"

void init_visualizer();
void visualize();
void fft(float *input, float *output);
float mag(float real, float imag);
int get_level(float *arr, float current);
