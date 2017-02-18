#!/bin/bash

if grub-file --is-x86-multiboot wos.bin; then
	echo multiboot  YES
else
	echo multiboot  NO
fi

if grub-file --is-x86-multiboot2 wos.bin; then
	echo multiboot2 YES
else
	echo multiboot2 NO
fi
