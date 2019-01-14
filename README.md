# chota-OS
## Computer Oragizational and Assembly Language Project

__To Assemble the code:__
  * `nasm -f bin boot-sect.asm boot-sect.bin`

__To Run on qemu:__

  * `qemu-system-x86_64 -fda boot-sect.bin`

![qemu](https://github.com/linxnerd/chota-OS/blob/master/screenshots/1.png)

### Run on your system: ###

1. Make disk image by using command:
   * `sudo dd if=boot-sect.bin of=disk.img conv=notrunc`
2. Command for live usb creation: 
   * `sudo dd if=disk.img of=/dev/sdb` 
3. Reboot your system and boot it from the live usb.


That's all!
