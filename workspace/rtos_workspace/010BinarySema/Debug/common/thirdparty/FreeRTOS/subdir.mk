################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (9-2020-q2-update)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
C:/Users/Balaji/Documents/GitHub/FreeRTOS/workspace/rtos_workspace/common/thirdparty/FreeRTOS/croutine.c \
C:/Users/Balaji/Documents/GitHub/FreeRTOS/workspace/rtos_workspace/common/thirdparty/FreeRTOS/event_groups.c \
C:/Users/Balaji/Documents/GitHub/FreeRTOS/workspace/rtos_workspace/common/thirdparty/FreeRTOS/list.c \
C:/Users/Balaji/Documents/GitHub/FreeRTOS/workspace/rtos_workspace/common/thirdparty/FreeRTOS/queue.c \
C:/Users/Balaji/Documents/GitHub/FreeRTOS/workspace/rtos_workspace/common/thirdparty/FreeRTOS/stream_buffer.c \
C:/Users/Balaji/Documents/GitHub/FreeRTOS/workspace/rtos_workspace/common/thirdparty/FreeRTOS/tasks.c \
C:/Users/Balaji/Documents/GitHub/FreeRTOS/workspace/rtos_workspace/common/thirdparty/FreeRTOS/timers.c 

OBJS += \
./common/thirdparty/FreeRTOS/croutine.o \
./common/thirdparty/FreeRTOS/event_groups.o \
./common/thirdparty/FreeRTOS/list.o \
./common/thirdparty/FreeRTOS/queue.o \
./common/thirdparty/FreeRTOS/stream_buffer.o \
./common/thirdparty/FreeRTOS/tasks.o \
./common/thirdparty/FreeRTOS/timers.o 

C_DEPS += \
./common/thirdparty/FreeRTOS/croutine.d \
./common/thirdparty/FreeRTOS/event_groups.d \
./common/thirdparty/FreeRTOS/list.d \
./common/thirdparty/FreeRTOS/queue.d \
./common/thirdparty/FreeRTOS/stream_buffer.d \
./common/thirdparty/FreeRTOS/tasks.d \
./common/thirdparty/FreeRTOS/timers.d 


# Each subdirectory must supply rules for building sources it contributes
common/thirdparty/FreeRTOS/croutine.o: C:/Users/Balaji/Documents/GitHub/FreeRTOS/workspace/rtos_workspace/common/thirdparty/FreeRTOS/croutine.c common/thirdparty/FreeRTOS/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32F446xx -DDEBUG -c -I../Drivers/CMSIS/Include -I"C:/Users/Balaji/Documents/GitHub/FreeRTOS/workspace/rtos_workspace/common/thirdparty/FreeRTOS/portable/GCC/ARM_CM4F" -I"C:/Users/Balaji/Documents/GitHub/FreeRTOS/workspace/rtos_workspace/common/thirdparty/SEGGER/SEGGER" -I"C:/Users/Balaji/Documents/GitHub/FreeRTOS/workspace/rtos_workspace/common/thirdparty/FreeRTOS" -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Core/Inc -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I"C:/Users/Balaji/Documents/GitHub/FreeRTOS/workspace/rtos_workspace/common/thirdparty/SEGGER/OS" -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I"C:/Users/Balaji/Documents/GitHub/FreeRTOS/workspace/rtos_workspace/common/thirdparty/SEGGER/Config" -I"C:/Users/Balaji/Documents/GitHub/FreeRTOS/workspace/rtos_workspace/common/thirdparty/FreeRTOS/include" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
common/thirdparty/FreeRTOS/event_groups.o: C:/Users/Balaji/Documents/GitHub/FreeRTOS/workspace/rtos_workspace/common/thirdparty/FreeRTOS/event_groups.c common/thirdparty/FreeRTOS/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32F446xx -DDEBUG -c -I../Drivers/CMSIS/Include -I"C:/Users/Balaji/Documents/GitHub/FreeRTOS/workspace/rtos_workspace/common/thirdparty/FreeRTOS/portable/GCC/ARM_CM4F" -I"C:/Users/Balaji/Documents/GitHub/FreeRTOS/workspace/rtos_workspace/common/thirdparty/SEGGER/SEGGER" -I"C:/Users/Balaji/Documents/GitHub/FreeRTOS/workspace/rtos_workspace/common/thirdparty/FreeRTOS" -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Core/Inc -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I"C:/Users/Balaji/Documents/GitHub/FreeRTOS/workspace/rtos_workspace/common/thirdparty/SEGGER/OS" -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I"C:/Users/Balaji/Documents/GitHub/FreeRTOS/workspace/rtos_workspace/common/thirdparty/SEGGER/Config" -I"C:/Users/Balaji/Documents/GitHub/FreeRTOS/workspace/rtos_workspace/common/thirdparty/FreeRTOS/include" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
common/thirdparty/FreeRTOS/list.o: C:/Users/Balaji/Documents/GitHub/FreeRTOS/workspace/rtos_workspace/common/thirdparty/FreeRTOS/list.c common/thirdparty/FreeRTOS/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32F446xx -DDEBUG -c -I../Drivers/CMSIS/Include -I"C:/Users/Balaji/Documents/GitHub/FreeRTOS/workspace/rtos_workspace/common/thirdparty/FreeRTOS/portable/GCC/ARM_CM4F" -I"C:/Users/Balaji/Documents/GitHub/FreeRTOS/workspace/rtos_workspace/common/thirdparty/SEGGER/SEGGER" -I"C:/Users/Balaji/Documents/GitHub/FreeRTOS/workspace/rtos_workspace/common/thirdparty/FreeRTOS" -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Core/Inc -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I"C:/Users/Balaji/Documents/GitHub/FreeRTOS/workspace/rtos_workspace/common/thirdparty/SEGGER/OS" -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I"C:/Users/Balaji/Documents/GitHub/FreeRTOS/workspace/rtos_workspace/common/thirdparty/SEGGER/Config" -I"C:/Users/Balaji/Documents/GitHub/FreeRTOS/workspace/rtos_workspace/common/thirdparty/FreeRTOS/include" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
common/thirdparty/FreeRTOS/queue.o: C:/Users/Balaji/Documents/GitHub/FreeRTOS/workspace/rtos_workspace/common/thirdparty/FreeRTOS/queue.c common/thirdparty/FreeRTOS/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32F446xx -DDEBUG -c -I../Drivers/CMSIS/Include -I"C:/Users/Balaji/Documents/GitHub/FreeRTOS/workspace/rtos_workspace/common/thirdparty/FreeRTOS/portable/GCC/ARM_CM4F" -I"C:/Users/Balaji/Documents/GitHub/FreeRTOS/workspace/rtos_workspace/common/thirdparty/SEGGER/SEGGER" -I"C:/Users/Balaji/Documents/GitHub/FreeRTOS/workspace/rtos_workspace/common/thirdparty/FreeRTOS" -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Core/Inc -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I"C:/Users/Balaji/Documents/GitHub/FreeRTOS/workspace/rtos_workspace/common/thirdparty/SEGGER/OS" -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I"C:/Users/Balaji/Documents/GitHub/FreeRTOS/workspace/rtos_workspace/common/thirdparty/SEGGER/Config" -I"C:/Users/Balaji/Documents/GitHub/FreeRTOS/workspace/rtos_workspace/common/thirdparty/FreeRTOS/include" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
common/thirdparty/FreeRTOS/stream_buffer.o: C:/Users/Balaji/Documents/GitHub/FreeRTOS/workspace/rtos_workspace/common/thirdparty/FreeRTOS/stream_buffer.c common/thirdparty/FreeRTOS/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32F446xx -DDEBUG -c -I../Drivers/CMSIS/Include -I"C:/Users/Balaji/Documents/GitHub/FreeRTOS/workspace/rtos_workspace/common/thirdparty/FreeRTOS/portable/GCC/ARM_CM4F" -I"C:/Users/Balaji/Documents/GitHub/FreeRTOS/workspace/rtos_workspace/common/thirdparty/SEGGER/SEGGER" -I"C:/Users/Balaji/Documents/GitHub/FreeRTOS/workspace/rtos_workspace/common/thirdparty/FreeRTOS" -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Core/Inc -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I"C:/Users/Balaji/Documents/GitHub/FreeRTOS/workspace/rtos_workspace/common/thirdparty/SEGGER/OS" -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I"C:/Users/Balaji/Documents/GitHub/FreeRTOS/workspace/rtos_workspace/common/thirdparty/SEGGER/Config" -I"C:/Users/Balaji/Documents/GitHub/FreeRTOS/workspace/rtos_workspace/common/thirdparty/FreeRTOS/include" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
common/thirdparty/FreeRTOS/tasks.o: C:/Users/Balaji/Documents/GitHub/FreeRTOS/workspace/rtos_workspace/common/thirdparty/FreeRTOS/tasks.c common/thirdparty/FreeRTOS/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32F446xx -DDEBUG -c -I../Drivers/CMSIS/Include -I"C:/Users/Balaji/Documents/GitHub/FreeRTOS/workspace/rtos_workspace/common/thirdparty/FreeRTOS/portable/GCC/ARM_CM4F" -I"C:/Users/Balaji/Documents/GitHub/FreeRTOS/workspace/rtos_workspace/common/thirdparty/SEGGER/SEGGER" -I"C:/Users/Balaji/Documents/GitHub/FreeRTOS/workspace/rtos_workspace/common/thirdparty/FreeRTOS" -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Core/Inc -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I"C:/Users/Balaji/Documents/GitHub/FreeRTOS/workspace/rtos_workspace/common/thirdparty/SEGGER/OS" -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I"C:/Users/Balaji/Documents/GitHub/FreeRTOS/workspace/rtos_workspace/common/thirdparty/SEGGER/Config" -I"C:/Users/Balaji/Documents/GitHub/FreeRTOS/workspace/rtos_workspace/common/thirdparty/FreeRTOS/include" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
common/thirdparty/FreeRTOS/timers.o: C:/Users/Balaji/Documents/GitHub/FreeRTOS/workspace/rtos_workspace/common/thirdparty/FreeRTOS/timers.c common/thirdparty/FreeRTOS/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32F446xx -DDEBUG -c -I../Drivers/CMSIS/Include -I"C:/Users/Balaji/Documents/GitHub/FreeRTOS/workspace/rtos_workspace/common/thirdparty/FreeRTOS/portable/GCC/ARM_CM4F" -I"C:/Users/Balaji/Documents/GitHub/FreeRTOS/workspace/rtos_workspace/common/thirdparty/SEGGER/SEGGER" -I"C:/Users/Balaji/Documents/GitHub/FreeRTOS/workspace/rtos_workspace/common/thirdparty/FreeRTOS" -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Core/Inc -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I"C:/Users/Balaji/Documents/GitHub/FreeRTOS/workspace/rtos_workspace/common/thirdparty/SEGGER/OS" -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I"C:/Users/Balaji/Documents/GitHub/FreeRTOS/workspace/rtos_workspace/common/thirdparty/SEGGER/Config" -I"C:/Users/Balaji/Documents/GitHub/FreeRTOS/workspace/rtos_workspace/common/thirdparty/FreeRTOS/include" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-common-2f-thirdparty-2f-FreeRTOS

clean-common-2f-thirdparty-2f-FreeRTOS:
	-$(RM) ./common/thirdparty/FreeRTOS/croutine.d ./common/thirdparty/FreeRTOS/croutine.o ./common/thirdparty/FreeRTOS/event_groups.d ./common/thirdparty/FreeRTOS/event_groups.o ./common/thirdparty/FreeRTOS/list.d ./common/thirdparty/FreeRTOS/list.o ./common/thirdparty/FreeRTOS/queue.d ./common/thirdparty/FreeRTOS/queue.o ./common/thirdparty/FreeRTOS/stream_buffer.d ./common/thirdparty/FreeRTOS/stream_buffer.o ./common/thirdparty/FreeRTOS/tasks.d ./common/thirdparty/FreeRTOS/tasks.o ./common/thirdparty/FreeRTOS/timers.d ./common/thirdparty/FreeRTOS/timers.o

.PHONY: clean-common-2f-thirdparty-2f-FreeRTOS

