all: Bootloader Kernel32 Disk.img

Bootloader:
	make -C 00.Bootloader

Kernel32:
	make -C 01.Kernel32

Disk.img: Bootloader Kernel32
	cat 00.Bootloader/Bootloader.bin 01.Kernel32/VirtualOS.bin > Disk.img

clean:
	make -C 00.Bootloader clean
	make -C 01.Kernel32 clean
	rm -f Disk.img
