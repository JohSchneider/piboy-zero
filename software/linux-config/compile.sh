#!/bin/sh
dtc -@ -I dts -O dtb -o pwm-audio-pi-zero-overlay.dtb pwm-audio-pi-zero-overlay.dts
dtc -@ -I dts -O dtb -o pi-boy-buttons-overlay.dtb pi-boy-buttons-overlay.dts
