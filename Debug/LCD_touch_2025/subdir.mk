################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../LCD_touch_2025/Bmp.c \
../LCD_touch_2025/lcd.c \
../LCD_touch_2025/main.c \
../LCD_touch_2025/start_screen.c \
../LCD_touch_2025/tp.c 

OBJS += \
./LCD_touch_2025/Bmp.o \
./LCD_touch_2025/lcd.o \
./LCD_touch_2025/main.o \
./LCD_touch_2025/start_screen.o \
./LCD_touch_2025/tp.o 

C_DEPS += \
./LCD_touch_2025/Bmp.d \
./LCD_touch_2025/lcd.d \
./LCD_touch_2025/main.d \
./LCD_touch_2025/start_screen.d \
./LCD_touch_2025/tp.d 


# Each subdirectory must supply rules for building sources it contributes
LCD_touch_2025/%.o: ../LCD_touch_2025/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Sourcery Windows GCC C Compiler'
	arm-none-eabi-gcc -I"C:\hlocal\workspace_Hardware\practica3\LCD_touch_2025\common" -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -mapcs-frame -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=arm7tdmi -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


