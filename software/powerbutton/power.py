#!/usr/bin/env python
# Simple script for shutting down the raspberry Pi at the press of a button.
# by Inderpreet Singh

import RPi.GPIO as GPIO
import time
import os

# Use the Broadcom SOC Pin numbers
# Setup the Pin with Internal pullups enabled and PIN in reading mode.
GPIO.setmode(GPIO.BCM)
GPIO.setup(4, GPIO.IN, pull_up_down = GPIO.PUD_UP)

# Our function on what to do when the button is pressed
def Shutdown(channel):
    os.system("sudo shutdown -h now")
    print "edge detected!"
    os.system('echo "1=0" > /dev/pi-blaster')

    ## this won't work, since shutdown will terminate this process while it still waits :-/
#    time.sleep(60)
#    GPIO.setup(4, GPIO.OUT, pull_up_down = GPIO.PUD_DOWN)


# Add our function to execute when the button pressed event happens
GPIO.add_event_detect(4, GPIO.FALLING, callback = Shutdown, bouncetime = 2000)

# Now wait!
while 1:
    time.sleep(1)
