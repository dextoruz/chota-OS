# ChotaOS: A mini bootloader (COAL Project)

## TEAM ##
* __Ali Husnain__
* __Muhammad Humza Qureshi__ ([soothscier](https://soothscier.wordpress.com))
* __Hafiz Bashir Ahmad__ 

## Project's Requirements ##

- [x] Make your own bootloader and boot it from __USB__.
- [x] Enables the keyboard(input/output). 
- [ ] Enables the mouse.(_because there are no BIOS interrupts for mouse!_)
	* __But you could get something about enabling the mouse__ [here.](https://stackoverflow.com/questions/53930033/how-to-enable-show-mouse-cursor-on-bootloader-screen)

__To Assemble the code:__

  * `nasm boot-sect.asm -f bin -o boot-sect.bin`

__To Run on qemu:__

  * `qemu-system-x86_64 -fda boot-sect.bin`

![qemu](https://github.com/linxnerd/chota-OS/blob/master/screenshots/1.png)

### To run on your system: ###

1. To create disk-image via terminal:
   * `sudo dd if=boot-sect.bin of=disk.img conv=notrunc`

2. Command for making live USB: 
   * `sudo dd if=disk.img of=/dev/sdb` 

![qemu](https://github.com/linxnerd/chota-OS/blob/master/screenshots/2.png)


3. Reboot your system and boot it from the live USB.

![qemu](https://github.com/linxnerd/chota-OS/blob/master/screenshots/3.jpg)

That's all!
