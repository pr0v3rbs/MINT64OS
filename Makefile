all: Bootloader Disk.img

Bootloader:
	make -C 00.Bootloader

Disk.img: 00.Bootloader/Bootloader.bin
	cp 00.Bootloader/Bootloader.bin Disk.img

clean:
	make -C 00.Bootloader clean
	rm -f Disk.img
