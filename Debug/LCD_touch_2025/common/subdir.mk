################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../LCD_touch_2025/common/44blib.c \
../LCD_touch_2025/common/AscII6x8.c \
../LCD_touch_2025/common/AscII8x16.c 

ASM_SRCS += \
../LCD_touch_2025/common/44binit.asm 

OBJS += \
./LCD_touch_2025/common/44binit.o \
./LCD_touch_2025/common/44blib.o \
./LCD_touch_2025/common/AscII6x8.o \
./LCD_touch_2025/common/AscII8x16.o 

C_DEPS += \
./LCD_touch_2025/common/44blib.d \
./LCD_touch_2025/common/AscII6x8.d \
./LCD_touch_2025/common/AscII8x16.d 

ASM_DEPS += \
./LCD_touch_2025/common/44binit.d 


# Each subdirectory must supply rules for building sources it contributes
LCD_touch_2025/common/%.o: ../LCD_touch_2025/common/%.asm
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Sourcery Windows GCC Assembler'
	arm-none-eabi-gcc -x assembler-with-cpp -I"C:\hlocal\workspace_Hardware\practica3\LCD_touch_2025\common" -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=arm7tdmi -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

LCD_touch_2025/common/%.o: ../LCD_touch_2025/common/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Sourcery Windows GCC C Compiler'
	arm-none-eabi-gcc -I"C:\hlocal\workspace_Hardware\practica3\LCD_touch_2025\common" -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -mapcs-frame -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=arm7tdmi -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


