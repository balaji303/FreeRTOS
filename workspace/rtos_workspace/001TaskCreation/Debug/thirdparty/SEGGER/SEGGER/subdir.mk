################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (9-2020-q2-update)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../thirdparty/SEGGER/SEGGER/SEGGER_RTT.c \
../thirdparty/SEGGER/SEGGER/SEGGER_RTT_printf.c \
../thirdparty/SEGGER/SEGGER/SEGGER_SYSVIEW.c 

S_UPPER_SRCS += \
../thirdparty/SEGGER/SEGGER/SEGGER_RTT_ASM_ARMv7M.S 

OBJS += \
./thirdparty/SEGGER/SEGGER/SEGGER_RTT.o \
./thirdparty/SEGGER/SEGGER/SEGGER_RTT_ASM_ARMv7M.o \
./thirdparty/SEGGER/SEGGER/SEGGER_RTT_printf.o \
./thirdparty/SEGGER/SEGGER/SEGGER_SYSVIEW.o 

S_UPPER_DEPS += \
./thirdparty/SEGGER/SEGGER/SEGGER_RTT_ASM_ARMv7M.d 

C_DEPS += \
./thirdparty/SEGGER/SEGGER/SEGGER_RTT.d \
./thirdparty/SEGGER/SEGGER/SEGGER_RTT_printf.d \
./thirdparty/SEGGER/SEGGER/SEGGER_SYSVIEW.d 


# Each subdirectory must supply rules for building sources it contributes
thirdparty/SEGGER/SEGGER/%.o: ../thirdparty/SEGGER/SEGGER/%.c thirdparty/SEGGER/SEGGER/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32F446xx -DDEBUG -c -I"C:/Users/Balaji/Documents/GitHub/FreeRTOS/workspace/rtos_workspace/001TaskCreation/thirdparty/FreeRTOS" -I"C:/Users/Balaji/Documents/GitHub/FreeRTOS/workspace/rtos_workspace/001TaskCreation/thirdparty/FreeRTOS/include" -I../Drivers/CMSIS/Include -I"C:/Users/Balaji/Documents/GitHub/FreeRTOS/workspace/rtos_workspace/001TaskCreation/thirdparty/FreeRTOS/portable/GCC/ARM_CM4F" -I"C:/Users/Balaji/Documents/GitHub/FreeRTOS/workspace/rtos_workspace/001TaskCreation/thirdparty/SEGGER/OS" -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Core/Inc -I"C:/Users/Balaji/Documents/GitHub/FreeRTOS/workspace/rtos_workspace/001TaskCreation/thirdparty/SEGGER/SEGGER" -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I"C:/Users/Balaji/Documents/GitHub/FreeRTOS/workspace/rtos_workspace/001TaskCreation/thirdparty/SEGGER/Config" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
thirdparty/SEGGER/SEGGER/%.o: ../thirdparty/SEGGER/SEGGER/%.S thirdparty/SEGGER/SEGGER/subdir.mk
	arm-none-eabi-gcc -mcpu=cortex-m4 -g3 -c -I"C:/Users/Balaji/Documents/GitHub/FreeRTOS/workspace/rtos_workspace/001TaskCreation/thirdparty/SEGGER/Config" -x assembler-with-cpp -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@" "$<"

clean: clean-thirdparty-2f-SEGGER-2f-SEGGER

clean-thirdparty-2f-SEGGER-2f-SEGGER:
	-$(RM) ./thirdparty/SEGGER/SEGGER/SEGGER_RTT.d ./thirdparty/SEGGER/SEGGER/SEGGER_RTT.o ./thirdparty/SEGGER/SEGGER/SEGGER_RTT_ASM_ARMv7M.d ./thirdparty/SEGGER/SEGGER/SEGGER_RTT_ASM_ARMv7M.o ./thirdparty/SEGGER/SEGGER/SEGGER_RTT_printf.d ./thirdparty/SEGGER/SEGGER/SEGGER_RTT_printf.o ./thirdparty/SEGGER/SEGGER/SEGGER_SYSVIEW.d ./thirdparty/SEGGER/SEGGER/SEGGER_SYSVIEW.o

.PHONY: clean-thirdparty-2f-SEGGER-2f-SEGGER

