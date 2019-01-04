# chota-OS
## Computer Oragizational and Assembly Language Project

__Assembling the code in nasm:__
  `nasm -f bin boot-sect.asm boot-sect.bin`

__Run on qemu__
  `qemu-system-x86_64 -fda boot-sect.bin`

**Run on your system:**
1. Make disk image by using command:
  `sudo dd if=boot-sect.bin of=disk.img conv=notrunc`
2. Take a USB and use this to make live usb from *__usb creator gui__*(ubuntu).
3. Reboot your system and boot it from live usb.

For more about the project, [click here](https://linxnerd.wordpress.com)

That's all!
