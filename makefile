
all:
	mkdir bin
	avr-gcc -mmcu=atmega32u4 -Wall -c src/main.c -o bin/main.out
writeflash:
	avrdude -p m32u4 -P /dev/ttyACM0 -c avr109 bin/main.out
