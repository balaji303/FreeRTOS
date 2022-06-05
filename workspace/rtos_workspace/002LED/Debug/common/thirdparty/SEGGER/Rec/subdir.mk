################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (9-2020-q2-update)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
C:/Users/Balaji/Documents/GitHub/FreeRTOS/workspace/rtos_workspace/common/thirdparty/SEGGER/Rec/segger_uart.c 

OBJS += \
./common/thirdparty/SEGGER/Rec/segger_uart.o 

C_DEPS += \
./common/thirdparty/SEGGER/Rec/segger_uart.d 


# Each subdirectory must supply rules for building sources it contributes
common/thirdparty/SEGGER/Rec/segger_uart.o: C:/Users/Balaji/Documents/GitHub/FreeRTOS/workspace/rtos_workspace/common/thirdparty/SEGGER/Rec/segger_uart.c common/thirdparty/SEGGER/Rec/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32F446xx -DDEBUG -c -I../Drivers/CMSIS/Include -I"C:/Users/Balaji/Documents/GitHub/FreeRTOS/workspace/rtos_workspace/common/thirdparty/FreeRTOS/portable/GCC/ARM_CM4F" -I"C:/Users/Balaji/Documents/GitHub/FreeRTOS/workspace/rtos_workspace/common/thirdparty/SEGGER/SEGGER" -I"C:/Users/Balaji/Documents/GitHub/FreeRTOS/workspace/rtos_workspace/common/thirdparty/FreeRTOS" -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Core/Inc -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I"C:/Users/Balaji/Documents/GitHub/FreeRTOS/workspace/rtos_workspace/common/thirdparty/SEGGER/OS" -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I"C:/Users/Balaji/Documents/GitHub/FreeRTOS/workspace/rtos_workspace/common/thirdparty/SEGGER/Config" -I"C:/Users/Balaji/Documents/GitHub/FreeRTOS/workspace/rtos_workspace/common/thirdparty/FreeRTOS/include" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-common-2f-thirdparty-2f-SEGGER-2f-Rec

clean-common-2f-thirdparty-2f-SEGGER-2f-Rec:
	-$(RM) ./common/thirdparty/SEGGER/Rec/segger_uart.d ./common/thirdparty/SEGGER/Rec/segger_uart.o

.PHONY: clean-common-2f-thirdparty-2f-SEGGER-2f-Rec

