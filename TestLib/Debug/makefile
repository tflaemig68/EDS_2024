################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

-include ../makefile.init

RM := rm -rf

# All of the sources participating in the build are defined here
-include sources.mk
-include Startup/subdir.mk
-include Src/subdir.mk
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


BUILD_ARTIFACT_NAME := TestLib
BUILD_ARTIFACT_EXTENSION := elf
BUILD_ARTIFACT_PREFIX :=
BUILD_ARTIFACT := $(BUILD_ARTIFACT_PREFIX)$(BUILD_ARTIFACT_NAME)$(if $(BUILD_ARTIFACT_EXTENSION),.$(BUILD_ARTIFACT_EXTENSION),)

# Add inputs and outputs from these tool invocations to the build variables 
EXECUTABLES += \
TestLib.elf \

MAP_FILES += \
TestLib.map \

SIZE_OUTPUT += \
default.size.stdout \

OBJDUMP_LIST += \
TestLib.list \


# All Target
all: main-build

# Main-build Target
main-build: TestLib.elf secondary-outputs

dependents:
	-cd /Users/philipprohlke/Documents/STMCubeIDE/GitHub/Ohne\ Titel/EDS_2024_fork/CMSIS/Debug && $(MAKE) all
	-cd /Users/philipprohlke/Documents/STMCubeIDE/GitHub/Ohne\ Titel/EDS_2024_fork/MCAL/Debug && $(MAKE) all

# Tool invocations
TestLib.elf TestLib.map: $(OBJS) $(USER_OBJS) /Users/philipprohlke/Documents/STMCubeIDE/GitHub/Ohne\ Titel/EDS_2024_fork/CMSIS/Debug/libCMSIS.a /Users/philipprohlke/Documents/STMCubeIDE/GitHub/Ohne\ Titel/EDS_2024_fork/MCAL/Debug/libMCAL.a /Users/philipprohlke/Documents/STMCubeIDE/GitHub/Ohne\ Titel/EDS_2024_fork/TestLib/STM32F401RETX_FLASH.ld makefile objects.list $(OPTIONAL_TOOL_DEPS)
	arm-none-eabi-gcc -o "TestLib.elf" @"objects.list" $(USER_OBJS) $(LIBS) -mcpu=cortex-m4 -T"/Users/philipprohlke/Documents/STMCubeIDE/GitHub/Ohne Titel/EDS_2024_fork/TestLib/STM32F401RETX_FLASH.ld" --specs=nosys.specs -Wl,-Map="TestLib.map" -Wl,--gc-sections -static -L"/Users/philipprohlke/Documents/STMCubeIDE/GitHub/Ohne Titel/EDS_2024_fork/MCAL/Debug" -L"/Users/philipprohlke/Documents/STMCubeIDE/GitHub/Ohne Titel/EDS_2024_fork/CMSIS/Debug" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -u _printf_float -u _scanf_float -Wl,--start-group -lc -lm -Wl,--end-group
	@echo 'Finished building target: $@'
	@echo ' '

default.size.stdout: $(EXECUTABLES) makefile objects.list $(OPTIONAL_TOOL_DEPS)
	arm-none-eabi-size  $(EXECUTABLES)
	@echo 'Finished building: $@'
	@echo ' '

TestLib.list: $(EXECUTABLES) makefile objects.list $(OPTIONAL_TOOL_DEPS)
	arm-none-eabi-objdump -h -S $(EXECUTABLES) > "TestLib.list"
	@echo 'Finished building: $@'
	@echo ' '

# Other Targets
clean:
	-$(RM) TestLib.elf TestLib.list TestLib.map default.size.stdout
	-@echo ' '

secondary-outputs: $(SIZE_OUTPUT) $(OBJDUMP_LIST)

fail-specified-linker-script-missing:
	@echo 'Error: Cannot find the specified linker script. Check the linker settings in the build configuration.'
	@exit 2

warn-no-linker-script-specified:
	@echo 'Warning: No linker script specified. Check the linker settings in the build configuration.'

.PHONY: all clean dependents main-build fail-specified-linker-script-missing warn-no-linker-script-specified
/Users/philipprohlke/Documents/STMCubeIDE/GitHub/Ohne\ Titel/EDS_2024_fork/CMSIS/Debug/libCMSIS.a:
/Users/philipprohlke/Documents/STMCubeIDE/GitHub/Ohne\ Titel/EDS_2024_fork/MCAL/Debug/libMCAL.a:

-include ../makefile.targets
