all: assembler compile linker

compile:
	i686-elf-gcc \
		-c \
		lib/kernel.c \
		lib/modules/terminal/terminal.c \
		lib/modules/vga/vga.c \
	-std=gnu99 \
	-ffreestanding \
	-O2 \
	-Wall \
	-Wextra

linker:
	i686-elf-gcc \
		-T linker.ld \
		-o myos.bin \
		-ffreestanding \
		-O2 \
		 -nostdlib \
		 boot.o kernel.o terminal.o vga.o \
		 -lgcc

assembler:
	i686-elf-as \
		boot.s \
		-o boot.o

clean:
	rm -rf \
		boot.o \
		kernel.o \
		terminal.o \
		vga.o \
		myos.bin
