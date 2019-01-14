# chota-OS
## Computer Oragizational and Assembly Language Project

__Assembling the code in nasm:__
  `nasm -f bin boot-sect.asm boot-sect.bin`

## Run on qemu ##
  `qemu-system-x86_64 -fda boot-sect.bin`
![qemu](https://github.com/linxnerd/chota-OS/blob/master/screenshots/1.png)

## Run on your system: ##
1. Make disk image by using command:
  	*`sudo dd if=boot-sect.bin of=disk.img conv=notrunc`
2. Command for live usb creation: 
	*`sudo dd if=disk.img of=/dev/sdb` 
3. Reboot your system and boot it from the live usb.

For more about the project, [click here](https://linxnerd.wordpress.com)

That's all!
