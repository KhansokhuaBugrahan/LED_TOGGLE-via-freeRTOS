/**
 ******************************************************************************
  file           : main.c
  author         : Khanshokhuo Bugrahan
  brief          : Main program body
 ******************************************************************************

 */

#include <stdint.h>

#include "FreeRTOS.h"
#include "task.h"

#include "gpio.h"

uint8_t leds [4] = {LED_GREEN, LED_ORANGE, LED_RED, LED_BLUE};

void vMyTask1(void* pvTask1 );

void vMyTask1(void* pvTask1 )
{

	uint8_t ledColor = *(uint8_t*)(pvTask1);

		while(1)
		{
				gpioTogglePin(GPIOD, ledColor);
				vTaskDelay(pdMS_TO_TICKS(500));
		}
}

int main(void) {


	       GPIO_Handle_t orangeLed = {
										.PORTNAME = GPIOD,
										.PINCONF.PIN = LED_ORANGE,
										.PINCONF.MODE = GPIO_MODE_OUTPUT,
										.PINCONF.OTYPE = GPIO_OTYPE_PP,
										.PINCONF.OSPEED = GPIO_OSPEED_HIGH,
										.PINCONF.PUPD = GPIO_PUPD_PU,
										.PINCONF.AF = AFNO
							         };
	          GPIO_Handle_t redLed = {
	        		  	  	  	  	    .PORTNAME = GPIOD,
										.PINCONF.PIN = LED_RED,
										.PINCONF.MODE = GPIO_MODE_OUTPUT,
										.PINCONF.OTYPE = GPIO_OTYPE_PP,
										.PINCONF.OSPEED = GPIO_OSPEED_HIGH,
										.PINCONF.PUPD = GPIO_PUPD_PU,
										.PINCONF.AF = AFNO
									 };
		    GPIO_Handle_t blueLed = {
		    						    .PORTNAME = GPIOD,
										.PINCONF.PIN = LED_BLUE,
										.PINCONF.MODE = GPIO_MODE_OUTPUT,
										.PINCONF.OTYPE = GPIO_OTYPE_PP,
										.PINCONF.OSPEED = GPIO_OSPEED_HIGH,
										.PINCONF.PUPD = GPIO_PUPD_PU,
										.PINCONF.AF = AFNO
									  };
		    GPIO_Handle_t greenLed = {
		    							.PORTNAME = GPIOD,
										.PINCONF.PIN = LED_GREEN,
										.PINCONF.MODE = GPIO_MODE_OUTPUT,
										.PINCONF.OTYPE = GPIO_OTYPE_PP,
										.PINCONF.OSPEED = GPIO_OSPEED_HIGH,
										.PINCONF.PUPD = GPIO_PUPD_PU,
										.PINCONF.AF = AFNO
									  };

	              gpioInit(&orangeLed);
	              gpioInit(&redLed);
	              gpioInit(&blueLed);
	              gpioInit(&greenLed);



	 TaskHandle_t myTask1Handler = NULL;  //only need for if we want to manage the task after initializing

     xTaskCreate(vMyTask1, "DEBUGLED1", 128, &leds[GREEN], 4, &myTask1Handler);
     xTaskCreate(vMyTask1, "DEBUGLED2", 128, &leds[ORANGE], 4, &myTask1Handler);
     xTaskCreate(vMyTask1, "DEBUGLED3", 128, &leds[RED], 4, &myTask1Handler);
     xTaskCreate(vMyTask1, "DEBUGLED4", 128, &leds[BLUE], 4, &myTask1Handler); // only it will be performed for task handler others are ignored
     	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	   //consider NULL


     vTaskStartScheduler();

     while(1);
}
