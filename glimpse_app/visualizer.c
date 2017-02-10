/*
 * visualizer.c
 *
 *  Created on: Apr 16, 2016
 *      Author: hsiehju
 */

#include "visualizer.h"

#define SIN_2PI_16 0.38268343236508978
#define SIN_4PI_16 0.707106781186547460
#define SIN_6PI_16 0.923879532511286740
#define C_P_S_2PI_16 1.30656296487637660
#define C_M_S_2PI_16 0.54119610014619690
#define C_P_S_6PI_16 1.3065629648763766
#define C_M_S_6PI_16 -0.54119610014619690

//CORE UART DEFINITIONS
#define BAUD_VALUE_57600    25
#define COREUARTAPB0_BASE_ADDR      0xC3000000UL


ace_channel_handle_t adc_handler;

float input[8];
float output[16];

/*float little_total = 0;
float little_stop = 100;
int little_counter= 0;

float big_total = 0;
float big_stop = 100;
int big_counter;*/

float low_freq_total = 0;
float mid_freq_total = 0;
float high_freq_total = 0;

float freq_counter = 0;
float freq_stop = 100;

//float low_freq_cutoff = 8900;
//float mid_freq_cutoff = 5650;
//float high_freq_cutoff = 1215;

float low_levels[] = {8850, 8900, 8950, 9000, 9050};
float mid_levels[] = {5570, 5590, 5610, 5630, 5650};
float high_levels[] = {1200, 1205, 1210, 1215, 1220};

float zero = 0;

uint8_t message[] = {4};

int counter = 0;
uint16_t adc_data;

UART_instance_t g_uart;

void init_visualizer(){
	//MSS_UART_init(&g_mss_uart1, MSS_UART_57600_BAUD, MSS_UART_DATA_8_BITS | MSS_UART_NO_PARITY | MSS_UART_ONE_STOP_BIT);

	UART_init(&g_uart, COREUARTAPB0_BASE_ADDR, BAUD_VALUE_57600, DATA_8_BITS | NO_PARITY);

	ACE_init();

	//DAC INITIALIZATION
	ACE_configure_sdd(SDD1_OUT, SDD_16_BITS, SDD_VOLTAGE_MODE | SDD_RETURN_TO_ZERO, INDIVIDUAL_UPDATE);
	ACE_enable_sdd(SDD1_OUT);

	adc_handler = ACE_get_channel_handle((const uint8_t *)"ADCDirectInput_0");
}

void visualize(){

	while( 1 ){
		adc_data = ACE_get_ppe_sample(adc_handler);
		printf("Value: %d\r\n", adc_data);

		input[counter++] = (float)adc_data;
		if (counter >= 8){
			counter = 0;
			fft(input, output);

			//printf("Magnitudes:\r\n");
			//printf("0. %.4f \r\n",mag(output[0],zero));				//baseline = 8830
			//printf("1. %.4f \r\n",mag(output[1],output[9]));		//baseline = 5550
			//printf("2. %.4f \r\n",mag(output[2],output[10]));		//baseline = don't care
			//printf("3. %.4f \r\n",mag(output[3],output[11]));		//baseline = 1195

			/*little_total += mag(output[0], zero);
			little_counter++;
			if (little_counter >= little_stop) {
				//if (little_total/little_counter > 9000){
				//	printf("LARGE VALUE: %.1f\r\n", little_total/little_stop);
				//}
				//printf("Average value: %.4f\r\n", little_total/little_stop);
				big_total += (little_total/little_stop);
				big_counter++;
				if (big_counter >= big_stop){
					printf("Average value: %.1f\r\n", big_total/big_stop);
					big_total = 0;
					big_counter = 0;
				}
				little_total = 0;
				little_counter = 0;
			}*/

			low_freq_total += mag(output[0], zero);
			mid_freq_total += mag(output[1], output[9]);
			high_freq_total += mag(output[3], output[11]);
			freq_counter++;
			if (freq_counter >= freq_stop){
				/*if (low_freq_total/freq_counter > low_freq_cutoff){
					printf("High base: %.1f\r\n", low_freq_total/freq_counter);
				}
				if (mid_freq_total/freq_counter > mid_freq_cutoff){
					printf("  High mid: %.1f\r\n", mid_freq_total/freq_counter);
				}
				if (high_freq_total/freq_counter > high_freq_cutoff){
					printf("    High treble: %.1f\r\n", high_freq_total/freq_counter);
				}*/

				message[0] = get_level(low_levels, low_freq_total/freq_counter);
				//printf("Bass: %d\r\n", message[0]);
				UART_send(&g_uart, message, sizeof(message));

				message[0] = get_level(mid_levels, mid_freq_total/freq_counter);
				//printf("Mid: %d\r\n", message[0]);
				UART_send(&g_uart, message, sizeof(message));

				message[0] = get_level(high_levels, high_freq_total/freq_counter);
				//printf("Treb: %d\r\n", message[0]);
				UART_send(&g_uart, message, sizeof(message));

				low_freq_total = 0;
				mid_freq_total = 0;
				high_freq_total = 0;
				freq_counter = 0;
			}

		}
	}
}

//http://web.mit.edu/~emin/Desktop/ref_to_emin/www.old/source_code/fft/fft.c
//SOME FUNCTION THAT OUTPUTS FFT VALUES
void fft(float *input, float *output){
	float temp, out0, out1, out2, out3, out4, out5, out6, out7, out8;
	float out9, out10, out11, out12, out13, out14, out15;


	//REAL FFT
	out0 = input[0];
	out1 = input[1];
	out2 = input[3];
	out3 = input[3];
	out4 = input[4];
	out5 = input[5];
	out6 = input[6];
	out7 = input[7];


	//REAL PART OF 4 POINT CMPLX FFT
	out8 = input[0];
	out9 = input[1];
	out10 = input[2];
	out11 = input[3];


	//IMAGINARY PART OF 4 POINT CMPLX FFT
	out12 = 0 - input[4];
	out13 = 0 - input[5];
	out14 = 0 - input[6];
	out15 = 0 - input[7];


	//TWIDDLE FACTOR MULTIPLIES FOR 4 POINT CFFT
	temp = (out13 - out9)*(SIN_6PI_16);
	out9 = (out9*C_P_S_2PI_16) + temp;
	out13 = (out13*C_M_S_6PI_16) + temp;

	out14 *= (SIN_4PI_16);
	out10 *= (SIN_4PI_16);
	out14 = out14 - out10;
	out10 = out14 + out10 + out10;

	temp = (out15 - out11)*(SIN_6PI_16);
	out11 = (out11*C_P_S_6PI_16) + temp;
	out15 = (out15*C_M_S_6PI_16) + temp;


	//TWO POINT BUTTERFLIES
	out8 += out10;
	out10 = out8 - out10 - out10;

	out12 += out14;
	out14 = out12 - out14 - out14;

	out9 += out11;
	out11 = out9 - out11 - out11;

	out13 += out15;
	out15 = out13 - out15 - out15;

	output[1] = out8 + out9;
	output[7] = out8 - out9;

	output[9] = out12 + out13;
	output[15] = out13 - out12;

	output[5] = out10 + out15;
	output[13] = out14 - out11;
	output[3] = out10 - out15;
	output[11] = -out14 - out11;

	out0 = out0 + out4;
	out4 = out0 - out4 - out4;
	out1 = out1 + out5;
	out5 = out1 - out5 - out5;
	out2 += out6;
	out6 = out2 - out6 - out6;
	out3 += out7;
	out7 = out3 - out7 - out7;

	output[0] = out0 + out2;
	output[4] = out0 - out2;
	out1 += out3;
	output[12] = out3 + out3 - out1;

	output[0] += out1;
	output[8] = output[0] - out1 - out1;

	out5 *= SIN_4PI_16;
	out7 *= SIN_4PI_16;
	out5 = out5 - out7;
	out7 = out5 + out7 + out7;

	output[14] = out6 - out7;
	output[2] = out5 + out4;
	output[6] = out4 - out5;
	output[10] = -out7 - out6;
}

float mag(float real, float imag){
	return sqrt(real*real+imag*imag);
}

int get_level(float *arr, float current){
	int counter = 0;
	while (counter < 5){
		if (current < arr[counter]){
			return counter;
		}
		counter = counter + 1;
	}
	return 5;
}
