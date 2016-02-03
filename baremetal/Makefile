ARMGNU = /home/strlko/x-tools/arm-cortex_a8-linux-gnueabi/bin/arm-cortex_a8-linux-gnueabi
 
AOSP = --warn --fatal-warnings
COPS = -Wall -Werror -02 -nostdlib -nostartfiles -ffreestanding

start.bin : start.s
	$(ARMGNU)-as $(AOPS) start.s -o start.o
	$(ARMGNU)-ld -T rammap start.o -o start.elf
	$(ARMGNU)-objdump -D start.elf > start.list
	$(ARMGNU)-objcopy start.elf -O srec start.srec
	$(ARMGNU)-objcopy start.elf -O binary start.bin
clean :
	rm -rf *~ start.o start.elf start.list start.srec start.bin
