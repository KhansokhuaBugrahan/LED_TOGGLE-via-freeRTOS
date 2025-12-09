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

********FOLLOW the STEPS BELOW to RUN it PROPERLY********                

   1- Create an empty project ( file-> New-> STM32 Project-> Select your board-> Name the project-> Targeted Project Type-> Empty-> Finish )          
   
   2- Copy the "freeRTOS" file  into the new project (ProjectExplorer-> projectname-> right click-> paste)           
   
   3- Right Click "freeRTOS" file-> Properties-> Exclude resource from build-> leave it blank for including the source-> Apply and Close     
   
   4- Copy and paste the header files(gpio.h and stm32f4xxx.h) into Inc in your project                         
   
   5- Repeat the previous step for source files(main.c and gpio.c) deploy them into Src                        
   
   6- Open project properties as we did above, go to C/C++ General-> Paths and Symbols-> Include Directories-> Add-> Workspace->                        
      choose freeRTOS->source->include then OK and OK                                 
      
   7- Apply the same,  freeRTOS->source->portable->GCC->ARM_CM4F then OK and OK, Apply and Close the window.               

   Now, it should work.If you have different processor and board, you may need to proper freeRTOS files according to them.
   We use Arm Cortex M4 for this board.                                                                            
   Also, you can redefine your own board by modifying stm32fxx.h file in line 127 to have proper setup,
   if you use another board.
   

