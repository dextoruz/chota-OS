# chota-OS
## Computer Oragizational and Assembly Language Project

__Assembles the code:__
  * `nasm -f bin boot-sect.asm boot-sect.bin`

__Run on qemu:__

  * `qemu-system-x86_64 -fda boot-sect.bin`

![qemu](https://github.com/linxnerd/chota-OS/blob/master/screenshots/1.png)

### To run on your system: ###

1. Make disk image by using command:
   * `sudo dd if=boot-sect.bin of=disk.img conv=notrunc`

2. Command for live usb creation: 
   * `sudo dd if=disk.img of=/dev/sdb` 

![qemu](https://github.com/linxnerd/chota-OS/blob/master/screenshots/2.png)


3. Reboot your system and boot it from the live usb.

![qemu](https://github.com/linxnerd/chota-OS/blob/master/screenshots/3.jpg)

That's all!
