## TL;DR

This repo is made based on [OSDEV.org](https://wiki.osdev.org/) bare bone tutorial.

## How to run?

You will need [QEMU](https://www.qemu.org/) ~~or other of this~~ to run it. You also need [CMake](https://cmake.org/).

```
$ make all
```

This is generate `myos.bin` file, you can run him typing:

```
qemu-system-i386 -kernel myos.bin
```
