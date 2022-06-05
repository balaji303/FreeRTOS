################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (9-2020-q2-update)
################################################################################

-include ../makefile.init

RM := rm -rf

# All of the sources participating in the build are defined here
-include sources.mk
-include common/thirdparty/SEGGER/SEGGER/Syscalls/subdir.mk
-include common/thirdparty/SEGGER/SEGGER/subdir.mk
-include common/thirdparty/SEGGER/Rec/subdir.mk
-include common/thirdparty/SEGGER/OS/subdir.mk
-include common/thirdparty/SEGGER/Config/subdir.mk
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


BUILD_ARTIFACT_NAME := 003TaskDelayUntil
BUILD_ARTIFACT_EXTENSION := elf
BUILD_ARTIFACT_PREFIX :=
BUILD_ARTIFACT := $(BUILD_ARTIFACT_PREFIX)$(BUILD_ARTIFACT_NAME)$(if $(BUILD_ARTIFACT_EXTENSION),.$(BUILD_ARTIFACT_EXTENSION),)

# Add inputs and outputs from these tool invocations to the build variables 
EXECUTABLES += \
003TaskDelayUntil.elf \

SIZE_OUTPUT += \
default.size.stdout \

OBJDUMP_LIST += \
003TaskDelayUntil.list \

OBJCOPY_BIN += \
003TaskDelayUntil.bin \


# All Target
all: main-build

# Main-build Target
main-build: 003TaskDelayUntil.elf secondary-outputs

# Tool invocations
003TaskDelayUntil.elf: $(OBJS) $(USER_OBJS) C:\Users\Balaji\Documents\GitHub\FreeRTOS\workspace\rtos_workspace\003TaskDelayUntil\STM32F446RETX_FLASH.ld makefile objects.list $(OPTIONAL_TOOL_DEPS)
	arm-none-eabi-gcc -o "003TaskDelayUntil.elf" @"objects.list" $(USER_OBJS) $(LIBS) -mcpu=cortex-m4 -T"C:\Users\Balaji\Documents\GitHub\FreeRTOS\workspace\rtos_workspace\003TaskDelayUntil\STM32F446RETX_FLASH.ld" --specs=nosys.specs -Wl,-Map="003TaskDelayUntil.map" -Wl,--gc-sections -static --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -Wl,--start-group -lc -lm -Wl,--end-group
	@echo 'Finished building target: $@'
	@echo ' '

default.size.stdout: $(EXECUTABLES) makefile objects.list $(OPTIONAL_TOOL_DEPS)
	arm-none-eabi-size  $(EXECUTABLES)
	@echo 'Finished building: $@'
	@echo ' '

003TaskDelayUntil.list: $(EXECUTABLES) makefile objects.list $(OPTIONAL_TOOL_DEPS)
	arm-none-eabi-objdump -h -S $(EXECUTABLES) > "003TaskDelayUntil.list"
	@echo 'Finished building: $@'
	@echo ' '

003TaskDelayUntil.bin: $(EXECUTABLES) makefile objects.list $(OPTIONAL_TOOL_DEPS)
	arm-none-eabi-objcopy  -O binary $(EXECUTABLES) "003TaskDelayUntil.bin"
	@echo 'Finished building: $@'
	@echo ' '

# Other Targets
clean:
	-$(RM) 003TaskDelayUntil.bin 003TaskDelayUntil.elf 003TaskDelayUntil.list default.size.stdout
	-@echo ' '

secondary-outputs: $(SIZE_OUTPUT) $(OBJDUMP_LIST) $(OBJCOPY_BIN)

fail-specified-linker-script-missing:
	@echo 'Error: Cannot find the specified linker script. Check the linker settings in the build configuration.'
	@exit 2

warn-no-linker-script-specified:
	@echo 'Warning: No linker script specified. Check the linker settings in the build configuration.'

.PHONY: all clean dependents main-build fail-specified-linker-script-missing warn-no-linker-script-specified

-include ../makefile.targets
