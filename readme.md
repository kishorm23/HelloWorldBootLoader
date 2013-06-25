Simple Hello World Bootloader
==============================
Simple 16 bit bootloader displays string "Hello World! From Kishor" on boot.

Getting Tools
--------------
1]NASM(*[Nasm 0.98.35 for Windows(ZIP, 218KB)](http://www.osdever.net/downloads/assemblers/nasm-0.98.35-win32.zip)* OR *[Nasm 0.98.35 for i386 Linux(RPM, 133KB)](http://www.osdever.net/downloads/assemblers/nasm-0.98.35-1.i386.rpm)*) - Assembler required to compile HelloWorld.asm

2][VirtualBox](https://www.virtualbox.org/)

How to test bootloader in virtualbox
-------------------------------------
1]Compile HelloWorld.asm with nasm

	path_to_nasm> nasm -f -o HelloWorld.img HelloWorld.asm

this will directly compile HelloWorld.asm to bootable floppy image HelloWorld.img

2] Open VirtualBox and create new machine with following parameters

	Type:Other
	Version:Other/Unknown
	Base Memory Size: less than 100MB would suffice
	Hard drive:Not Needed

3]After machine is created go to Settings->Storage

4]Add a new Floppy Controller and mount the "HelloWorld.img"

5]If image get mounted successfully start virtual machine it will show the string "Hello World! From Kishor"