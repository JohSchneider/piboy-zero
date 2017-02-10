#!/bin/sh
cd /home/pi/wiringPi/gpio/
sudo ./gpio -g mode 1 output
sudo ./gpio -g write 1 1
