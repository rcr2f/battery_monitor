# battery_monitor

installing the avr toolchain on ubuntu:
sudo apt-get install gcc-avr binutils-avr gdb-avr avr-libc avrdude

compile (from within directory src):
avr-gcc -mmcu=atmega32u4 -Wall -c main.c -o main.out

view usb port:
sudo dmseg

find ttyACM# for the breakout board. should see AVR bootloader listed with it

download to the board:
avrdude -p m32u4 -P /dev/ttyACM0 -c avr109 main.out
