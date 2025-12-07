################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../freeRTOS/Source/portable/system_stm32f4xx.c 

OBJS += \
./freeRTOS/Source/portable/system_stm32f4xx.o 

C_DEPS += \
./freeRTOS/Source/portable/system_stm32f4xx.d 


# Each subdirectory must supply rules for building sources it contributes
freeRTOS/Source/portable/%.o freeRTOS/Source/portable/%.su freeRTOS/Source/portable/%.cyclo: ../freeRTOS/Source/portable/%.c freeRTOS/Source/portable/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DSTM32F407xx -DSTM32 -DSTM32F407G_DISC1 -c -I../Inc -I"D:/STMCubeIDE_WorkSpace/freeRTOS/freeRTOS/Source/include" -I"D:/STMCubeIDE_WorkSpace/freeRTOS/freeRTOS/Source/portable/GCC/ARM_CM4F" -I"D:/STMCubeIDE_WorkSpace/freeRTOS/freeRTOS/Source/portable/MemMang" -include"D:/STMCubeIDE_WorkSpace/freeRTOS/freeRTOS/Source/include/FreeRTOS.h" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-freeRTOS-2f-Source-2f-portable

clean-freeRTOS-2f-Source-2f-portable:
	-$(RM) ./freeRTOS/Source/portable/system_stm32f4xx.cyclo ./freeRTOS/Source/portable/system_stm32f4xx.d ./freeRTOS/Source/portable/system_stm32f4xx.o ./freeRTOS/Source/portable/system_stm32f4xx.su

.PHONY: clean-freeRTOS-2f-Source-2f-portable

