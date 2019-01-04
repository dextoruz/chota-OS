# chota-OS
### Computer Oragizational and Assembly Language Project

*Assembling the code in nasm:*
`nasm -f bin boot-sect.asm boot-sect.bin`

*Run on qemu*
`qemu-system-x86_64 -fda boot-sect.bin`

*Run on your system: *
1. Make disk image by using command:
  `sudo dd if=boot-sect.bin of=disk.img conv=notrunc`
2. Take a USB and use this to make live usb from __usb creator gui__(ubuntu).
3. Reboot your system and boot it from live usb.


That's all!
