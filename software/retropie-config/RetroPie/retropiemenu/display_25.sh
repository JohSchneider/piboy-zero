#!/bin/sh
cd /home/pi/wiringPi/gpio/
sudo ./gpio -g 1 mode output
echo "1=0.25" > /dev/pi-blaster
