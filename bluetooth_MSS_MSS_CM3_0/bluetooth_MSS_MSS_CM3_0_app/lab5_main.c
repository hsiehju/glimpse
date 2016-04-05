
//use MSS hardware timer1 @100MHz and GPIO mapped to LEDS

#include "mytimer_post.h"
#include <stdlib.h>

void led0() { MSS_GPIO_set_outputs(MSS_GPIO_get_outputs( )^ MSS_GPIO_0_MASK);}
void led1() { MSS_GPIO_set_outputs(MSS_GPIO_get_outputs( )^ MSS_GPIO_1_MASK);}
void led2() { MSS_GPIO_set_outputs(MSS_GPIO_get_outputs( )^ MSS_GPIO_2_MASK);}
void led3() { MSS_GPIO_set_outputs(MSS_GPIO_get_outputs( )^ MSS_GPIO_3_MASK);}
void led4() { MSS_GPIO_set_outputs(MSS_GPIO_get_outputs( )^ MSS_GPIO_4_MASK);}

int main(){

	MSS_GPIO_init();
	MSS_GPIO_config( MSS_GPIO_0, MSS_GPIO_OUTPUT_MODE);
	MSS_GPIO_config( MSS_GPIO_1, MSS_GPIO_OUTPUT_MODE);
	MSS_GPIO_config( MSS_GPIO_2, MSS_GPIO_OUTPUT_MODE);
	MSS_GPIO_config( MSS_GPIO_3, MSS_GPIO_OUTPUT_MODE);
	MSS_GPIO_config( MSS_GPIO_4, MSS_GPIO_OUTPUT_MODE);
	MSS_GPIO_set_outputs(0x0000);

	startTimerOneshot(&led0, 100000000);	//1 second oneshot
	startTimerContinuous(&led1, 10000000);	//.1 second continuous
	startTimerContinuous(&led2, 10000000);	//.1 second continuous
	startTimerContinuous(&led3, 25000000);	//.25 second continuous
	startTimerContinuous(&led4, 100000000);	//1 second continuous
	start_hardware_timer(root->time);


	while(1);
}
//hardware timer down counting at 100MHz
//should interrupt once a second.
void Timer1_IRQHandler( void ){

	root->handler();
	update_timers();
	MSS_TIM1_clear_irq();
	MSS_TIM1_load_immediate(root->time);
	MSS_TIM1_start();
}
