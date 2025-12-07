################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../freeRTOS/Source/portable/GCC/ARM_CM4F/port.c 

OBJS += \
./freeRTOS/Source/portable/GCC/ARM_CM4F/port.o 

C_DEPS += \
./freeRTOS/Source/portable/GCC/ARM_CM4F/port.d 


# Each subdirectory must supply rules for building sources it contributes
freeRTOS/Source/portable/GCC/ARM_CM4F/%.o freeRTOS/Source/portable/GCC/ARM_CM4F/%.su freeRTOS/Source/portable/GCC/ARM_CM4F/%.cyclo: ../freeRTOS/Source/portable/GCC/ARM_CM4F/%.c freeRTOS/Source/portable/GCC/ARM_CM4F/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DSTM32F407xx -DSTM32 -DSTM32F407G_DISC1 -c -I../Inc -I"D:/STMCubeIDE_WorkSpace/freeRTOS/freeRTOS/Source/include" -I"D:/STMCubeIDE_WorkSpace/freeRTOS/freeRTOS/Source/portable/GCC/ARM_CM4F" -I"D:/STMCubeIDE_WorkSpace/freeRTOS/freeRTOS/Source/portable/MemMang" -include"D:/STMCubeIDE_WorkSpace/freeRTOS/freeRTOS/Source/include/FreeRTOS.h" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-freeRTOS-2f-Source-2f-portable-2f-GCC-2f-ARM_CM4F

clean-freeRTOS-2f-Source-2f-portable-2f-GCC-2f-ARM_CM4F:
	-$(RM) ./freeRTOS/Source/portable/GCC/ARM_CM4F/port.cyclo ./freeRTOS/Source/portable/GCC/ARM_CM4F/port.d ./freeRTOS/Source/portable/GCC/ARM_CM4F/port.o ./freeRTOS/Source/portable/GCC/ARM_CM4F/port.su

.PHONY: clean-freeRTOS-2f-Source-2f-portable-2f-GCC-2f-ARM_CM4F

