//#include <stdio.h>
//#include <inttypes.h>
//#include "drivers/mss_uart/mss_uart.h"
//
//#define RX_BUFF_SIZE    64
//
//
//
//int main()
//{
//
//	 //uint8_t tx_buff[RX_BUFF_SIZE] = "";
//	 uint8_t rx_buff[RX_BUFF_SIZE] = "";
//	 uint32_t rx_size = 0;
//	 /* initialize the UART */
//	 MSS_UART_init
//	 (
//		  &g_mss_uart0,
//		  MSS_UART_9600_BAUD,
//		  MSS_UART_DATA_8_BITS | MSS_UART_NO_PARITY | MSS_UART_ONE_STOP_BIT
//	 );
//
//	 MSS_UART_init
//	 (
//		  &g_mss_uart1,
//		  MSS_UART_9600_BAUD,
//		  MSS_UART_DATA_8_BITS | MSS_UART_NO_PARITY | MSS_UART_ONE_STOP_BIT
//	 );
//	 /* transmit the message Go Blue */
//	 while( 1 )
//     {
//	   rx_size = MSS_UART_get_rx( &g_mss_uart1, rx_buff, sizeof(rx_buff) );
//	   if (rx_size > 0)
//	   {
//		   MSS_UART_polled_tx_string( &g_mss_uart0, rx_buff);
//	   }
//	   rx_size = MSS_UART_get_rx( &g_mss_uart0, rx_buff, sizeof(rx_buff) );
//	   if (rx_size > 0)
//	   {
//		   MSS_UART_polled_tx_string( &g_mss_uart1, rx_buff);
//	   }
//     }
//     return 0;
//}

#include <stdio.h>
#include <inttypes.h>
#include "drivers/mss_uart/mss_uart.h"


#define RX_BUFF_SIZE    64

int main()
{
 	 uint8_t rx_buff[RX_BUFF_SIZE] = "";
 	 uint8_t tx_buff[RX_BUFF_SIZE] = "";

 	 size_t rx_size = 0;

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

 	 uint8_t msg[RX_BUFF_SIZE] = "";


 	 while (1) {
		 rx_size = MSS_UART_get_rx( &g_mss_uart1, rx_buff, sizeof(rx_buff) );
		 if(rx_size > 0){
			 MSS_UART_polled_tx( &g_mss_uart0, rx_buff, rx_size);
		 }

		 rx_size = MSS_UART_get_rx( &g_mss_uart0, tx_buff, sizeof(tx_buff));
		 if(rx_size > 0){
			 int index = 0;
			 while(tx_buff[0] != '\r') {
				 msg[index] = tx_buff[0];

				 MSS_UART_get_rx( &g_mss_uart0, tx_buff, sizeof(tx_buff));

				 index++;
			 }

			 MSS_UART_polled_tx( &g_mss_uart1, msg, index);
		 }
 	 }



}
