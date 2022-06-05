################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (9-2020-q2-update)
################################################################################

-include ../makefile.init

RM := rm -rf

# All of the sources participating in the build are defined here
-include sources.mk
-include common/thirdparty/FreeRTOS/portable/MemMang/subdir.mk
-include common/thirdparty/FreeRTOS/portable/GCC/ARM_CM4F/subdir.mk
-include common/thirdparty/FreeRTOS/subdir.mk
-include Drivers/STM32F4xx_HAL_Driver/Src/subdir.mk
-include Core/Startup/subdir.mk
-include Core/Src/subdir.mk
-include objects.mk

ifneq ($(MAKECMDGOALS),clean)
ifneq ($(strip $(S_DEPS)),)
-include $(S_DEPS)
endif
ifneq ($(strip $(S_UPPER_DEPS)),)
-include $(S_UPPER_DEPS)
endif
ifneq ($(strip $(C_DEPS)),)
-include $(C_DEPS)
endif
endif

-include ../makefile.defs

OPTIONAL_TOOL_DEPS := \
$(wildcard ../makefile.defs) \
$(wildcard ../makefile.init) \
$(wildcard ../makefile.targets) \


BUILD_ARTIFACT_NAME := 009QueAndTime_MASTER
BUILD_ARTIFACT_EXTENSION := elf
BUILD_ARTIFACT_PREFIX := Balaji_
BUILD_ARTIFACT := $(BUILD_ARTIFACT_PREFIX)$(BUILD_ARTIFACT_NAME)$(if $(BUILD_ARTIFACT_EXTENSION),.$(BUILD_ARTIFACT_EXTENSION),)

# Add inputs and outputs from these tool invocations to the build variables 
EXECUTABLES += \
Balaji_009QueAndTime_MASTER.elf \

SIZE_OUTPUT += \
default.size.stdout \

OBJDUMP_LIST += \
Balaji_009QueAndTime_MASTER.list \

OBJCOPY_HEX += \
Balaji_009QueAndTime_MASTER.hex \

OBJCOPY_BIN += \
Balaji_009QueAndTime_MASTER.bin \


# All Target
all: main-build

# Main-build Target
main-build: Balaji_009QueAndTime_MASTER.elf secondary-outputs

# Tool invocations
Balaji_009QueAndTime_MASTER.elf: $(OBJS) $(USER_OBJS) C:\Users\Balaji\Documents\GitHub\FreeRTOS\workspace\rtos_workspace\009QueAndTime_MASTER\STM32F446RETX_FLASH.ld makefile objects.list $(OPTIONAL_TOOL_DEPS)
	arm-none-eabi-gcc -o "Balaji_009QueAndTime_MASTER.elf" @"objects.list" $(USER_OBJS) $(LIBS) -mcpu=cortex-m4 -T"C:\Users\Balaji\Documents\GitHub\FreeRTOS\workspace\rtos_workspace\009QueAndTime_MASTER\STM32F446RETX_FLASH.ld" --specs=nosys.specs -Wl,-Map="Balaji_009QueAndTime_MASTER.map" -Wl,--gc-sections -static --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -Wl,--start-group -lc -lm -Wl,--end-group
	@echo 'Finished building target: $@'
	@echo ' '

default.size.stdout: $(EXECUTABLES) makefile objects.list $(OPTIONAL_TOOL_DEPS)
	arm-none-eabi-size  $(EXECUTABLES)
	@echo 'Finished building: $@'
	@echo ' '

Balaji_009QueAndTime_MASTER.list: $(EXECUTABLES) makefile objects.list $(OPTIONAL_TOOL_DEPS)
	arm-none-eabi-objdump -h -S $(EXECUTABLES) > "Balaji_009QueAndTime_MASTER.list"
	@echo 'Finished building: $@'
	@echo ' '

Balaji_009QueAndTime_MASTER.hex: $(EXECUTABLES) makefile objects.list $(OPTIONAL_TOOL_DEPS)
	arm-none-eabi-objcopy  -O ihex $(EXECUTABLES) "Balaji_009QueAndTime_MASTER.hex"
	@echo 'Finished building: $@'
	@echo ' '

Balaji_009QueAndTime_MASTER.bin: $(EXECUTABLES) makefile objects.list $(OPTIONAL_TOOL_DEPS)
	arm-none-eabi-objcopy  -O binary $(EXECUTABLES) "Balaji_009QueAndTime_MASTER.bin"
	@echo 'Finished building: $@'
	@echo ' '

# Other Targets
clean:
	-$(RM) Balaji_009QueAndTime_MASTER.bin Balaji_009QueAndTime_MASTER.elf Balaji_009QueAndTime_MASTER.hex Balaji_009QueAndTime_MASTER.list default.size.stdout
	-@echo ' '

secondary-outputs: $(SIZE_OUTPUT) $(OBJDUMP_LIST) $(OBJCOPY_HEX) $(OBJCOPY_BIN)

fail-specified-linker-script-missing:
	@echo 'Error: Cannot find the specified linker script. Check the linker settings in the build configuration.'
	@exit 2

warn-no-linker-script-specified:
	@echo 'Warning: No linker script specified. Check the linker settings in the build configuration.'

.PHONY: all clean dependents main-build fail-specified-linker-script-missing warn-no-linker-script-specified

-include ../makefile.targets
