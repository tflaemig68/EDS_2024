################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Device/ST/STM32F4xx/Source/Templates/system_stm32f4xx.c 

OBJS += \
./Device/ST/STM32F4xx/Source/Templates/system_stm32f4xx.o 

C_DEPS += \
./Device/ST/STM32F4xx/Source/Templates/system_stm32f4xx.d 


# Each subdirectory must supply rules for building sources it contributes
Device/ST/STM32F4xx/Source/Templates/%.o Device/ST/STM32F4xx/Source/Templates/%.su Device/ST/STM32F4xx/Source/Templates/%.cyclo: ../Device/ST/STM32F4xx/Source/Templates/%.c Device/ST/STM32F4xx/Source/Templates/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DSTM32 -DSTM32F401RETx -DSTM32F4 -c -I"D:/GITHUB/STM32/EDS_2024/CMSIS/Include" -I"D:/GITHUB/STM32/EDS_2024/CMSIS/Device/ST/STM32F4xx/Include" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Device-2f-ST-2f-STM32F4xx-2f-Source-2f-Templates

clean-Device-2f-ST-2f-STM32F4xx-2f-Source-2f-Templates:
	-$(RM) ./Device/ST/STM32F4xx/Source/Templates/system_stm32f4xx.cyclo ./Device/ST/STM32F4xx/Source/Templates/system_stm32f4xx.d ./Device/ST/STM32F4xx/Source/Templates/system_stm32f4xx.o ./Device/ST/STM32F4xx/Source/Templates/system_stm32f4xx.su

.PHONY: clean-Device-2f-ST-2f-STM32F4xx-2f-Source-2f-Templates

