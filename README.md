# LED_TOGGLE-via-freeRTOS
A beginner-level project using FreeRTOS to toggle  LEDs with a single task.

Board: STM32F407G-DISC1                                                   
   IDE: STMCubdeIDE                              
                                  
Inc -> Header files                                   
Src -> Source files (main.c as well)                                       
                                
Since we only want to toggle leds each 500ms, we haven't created three more task.                                                     
Instead, we use a single task to keep the program simple and clean.                  
freeRTOS allows tasks to have the same priority level.                        
It switches CPU task each tick(1ms) and they all seem working simultaneously.       
In our case, any led task is performed each 4 tick ( 4ms)

I intentionally left first three xTaskCreate's last parameter with the same handler.                    
Proper usage would be passed NULL.                                    

It is better and more optional to use freeRTOS in projects which include multi-tasks and time-crucial events.                            
freeRTOS also makes projects more modular and readable.
