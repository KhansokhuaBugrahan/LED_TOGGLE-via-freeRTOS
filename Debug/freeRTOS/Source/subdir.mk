################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../freeRTOS/Source/croutine.c \
../freeRTOS/Source/event_groups.c \
../freeRTOS/Source/list.c \
../freeRTOS/Source/queue.c \
../freeRTOS/Source/stream_buffer.c \
../freeRTOS/Source/tasks.c \
../freeRTOS/Source/timers.c 

OBJS += \
./freeRTOS/Source/croutine.o \
./freeRTOS/Source/event_groups.o \
./freeRTOS/Source/list.o \
./freeRTOS/Source/queue.o \
./freeRTOS/Source/stream_buffer.o \
./freeRTOS/Source/tasks.o \
./freeRTOS/Source/timers.o 

C_DEPS += \
./freeRTOS/Source/croutine.d \
./freeRTOS/Source/event_groups.d \
./freeRTOS/Source/list.d \
./freeRTOS/Source/queue.d \
./freeRTOS/Source/stream_buffer.d \
./freeRTOS/Source/tasks.d \
./freeRTOS/Source/timers.d 


# Each subdirectory must supply rules for building sources it contributes
freeRTOS/Source/%.o freeRTOS/Source/%.su freeRTOS/Source/%.cyclo: ../freeRTOS/Source/%.c freeRTOS/Source/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DSTM32F407xx -DSTM32 -DSTM32F407G_DISC1 -c -I../Inc -I"D:/STMCubeIDE_WorkSpace/freeRTOS/freeRTOS/Source/include" -I"D:/STMCubeIDE_WorkSpace/freeRTOS/freeRTOS/Source/portable/GCC/ARM_CM4F" -I"D:/STMCubeIDE_WorkSpace/freeRTOS/freeRTOS/Source/portable/MemMang" -include"D:/STMCubeIDE_WorkSpace/freeRTOS/freeRTOS/Source/include/FreeRTOS.h" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-freeRTOS-2f-Source

clean-freeRTOS-2f-Source:
	-$(RM) ./freeRTOS/Source/croutine.cyclo ./freeRTOS/Source/croutine.d ./freeRTOS/Source/croutine.o ./freeRTOS/Source/croutine.su ./freeRTOS/Source/event_groups.cyclo ./freeRTOS/Source/event_groups.d ./freeRTOS/Source/event_groups.o ./freeRTOS/Source/event_groups.su ./freeRTOS/Source/list.cyclo ./freeRTOS/Source/list.d ./freeRTOS/Source/list.o ./freeRTOS/Source/list.su ./freeRTOS/Source/queue.cyclo ./freeRTOS/Source/queue.d ./freeRTOS/Source/queue.o ./freeRTOS/Source/queue.su ./freeRTOS/Source/stream_buffer.cyclo ./freeRTOS/Source/stream_buffer.d ./freeRTOS/Source/stream_buffer.o ./freeRTOS/Source/stream_buffer.su ./freeRTOS/Source/tasks.cyclo ./freeRTOS/Source/tasks.d ./freeRTOS/Source/tasks.o ./freeRTOS/Source/tasks.su ./freeRTOS/Source/timers.cyclo ./freeRTOS/Source/timers.d ./freeRTOS/Source/timers.o ./freeRTOS/Source/timers.su

.PHONY: clean-freeRTOS-2f-Source

