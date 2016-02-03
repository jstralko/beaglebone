.globl _start

/*
 * Found this value (0x44E09000) in the AM335x ARM Cortex-A8
 * Microprocessors Techinal Reference Manual
 * Page 158 (Memory map) Look for UART0
 *
 * Or if you are lazy you can grep for this value in
 * u-boot source code.
 * I believe its:
 *	arch/arm/include/asm/arch-am33xx/hardware_am43xx.h
 */
_start:
	ldr r0, =0x44E09000
	mov r1, #0x55
	strh r1, [r0]
	strh r1, [r0]
	strh r1, [r0]
	strh r1, [r0]
	strh r1, [r0]
	strh r1, [r0]
hang:	b hang
