################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (9-2020-q2-update)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../thirdparty/FreeRTOS/portable/GCC/ARM_CM4F/port.c 

OBJS += \
./thirdparty/FreeRTOS/portable/GCC/ARM_CM4F/port.o 

C_DEPS += \
./thirdparty/FreeRTOS/portable/GCC/ARM_CM4F/port.d 


# Each subdirectory must supply rules for building sources it contributes
thirdparty/FreeRTOS/portable/GCC/ARM_CM4F/%.o: ../thirdparty/FreeRTOS/portable/GCC/ARM_CM4F/%.c thirdparty/FreeRTOS/portable/GCC/ARM_CM4F/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32F446xx -DDEBUG -c -I"C:/Users/Balaji/Documents/GitHub/FreeRTOS/workspace/rtos_workspace/001TaskCreation/thirdparty/FreeRTOS" -I"C:/Users/Balaji/Documents/GitHub/FreeRTOS/workspace/rtos_workspace/001TaskCreation/thirdparty/FreeRTOS/include" -I../Drivers/CMSIS/Include -I"C:/Users/Balaji/Documents/GitHub/FreeRTOS/workspace/rtos_workspace/001TaskCreation/thirdparty/FreeRTOS/portable/GCC/ARM_CM4F" -I"C:/Users/Balaji/Documents/GitHub/FreeRTOS/workspace/rtos_workspace/001TaskCreation/thirdparty/SEGGER/OS" -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Core/Inc -I"C:/Users/Balaji/Documents/GitHub/FreeRTOS/workspace/rtos_workspace/001TaskCreation/thirdparty/SEGGER/SEGGER" -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I"C:/Users/Balaji/Documents/GitHub/FreeRTOS/workspace/rtos_workspace/001TaskCreation/thirdparty/SEGGER/Config" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-thirdparty-2f-FreeRTOS-2f-portable-2f-GCC-2f-ARM_CM4F

clean-thirdparty-2f-FreeRTOS-2f-portable-2f-GCC-2f-ARM_CM4F:
	-$(RM) ./thirdparty/FreeRTOS/portable/GCC/ARM_CM4F/port.d ./thirdparty/FreeRTOS/portable/GCC/ARM_CM4F/port.o

.PHONY: clean-thirdparty-2f-FreeRTOS-2f-portable-2f-GCC-2f-ARM_CM4F

