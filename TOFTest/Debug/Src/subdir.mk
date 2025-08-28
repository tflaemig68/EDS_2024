################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Src/ST7735.c \
../Src/graphics.c \
../Src/main.c \
../Src/visualisation.c 

OBJS += \
./Src/ST7735.o \
./Src/graphics.o \
./Src/main.o \
./Src/visualisation.o 

C_DEPS += \
./Src/ST7735.d \
./Src/graphics.d \
./Src/main.d \
./Src/visualisation.d 


# Each subdirectory must supply rules for building sources it contributes
Src/%.o Src/%.su Src/%.cyclo: ../Src/%.c Src/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g -DDEBUG -DSTM32 -DSTM32F401RETx -DSTM32F4 -c -I"D:/GITHUB/SMT32F4/EDS_2024/CMSIS/Include" -I"D:/GITHUB/SMT32F4/EDS_2024/CMSIS/Device/ST/STM32F4xx/Include" -I"D:/GITHUB/SMT32F4/EDS_2024/MCAL/Inc" -I"D:/GITHUB/SMT32F4/EDS_2024/MCAL/Inc/mcalTimer" -I"D:/GITHUB/SMT32F4/EDS_2024/TOFTest/Inc" -I"D:/GITHUB/SMT32F4/EDS_2024/BALO/Inc" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Src

clean-Src:
	-$(RM) ./Src/ST7735.cyclo ./Src/ST7735.d ./Src/ST7735.o ./Src/ST7735.su ./Src/graphics.cyclo ./Src/graphics.d ./Src/graphics.o ./Src/graphics.su ./Src/main.cyclo ./Src/main.d ./Src/main.o ./Src/main.su ./Src/visualisation.cyclo ./Src/visualisation.d ./Src/visualisation.o ./Src/visualisation.su

.PHONY: clean-Src

