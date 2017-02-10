#!/bin/bash

## this script modifies a freshly flashed retropie sd-card
# http://blog.petrockblock.com/retropie/retropie-downloads/retropie-image-for-raspberry-pi-1/
# https://github.com/RetroPie/RetroPie-Setup/releases/download/3.6/retropie-v3.6-rpi1_zero.img.gz

# Make sure only root can run our script
if [[ $EUID -ne 0 ]]; then
   echo "This script must be run as root" 1>&2
   exit 1
fi

set -ex

##### enable display #####
## basically follows these instructions:
## https://learn.adafruit.com/adafruit-pitft-28-inch-resistive-touchscreen-display-raspberry-pi/software-installation
curl -kSLs https://apt.adafruit.com/add-pin | bash
apt-get install -y raspberrypi-bootloader adafruit-pitft-helper
adafruit-pitft-helper -t 22 < <(printf 'n\nn\n')
## answers 'no' for user input on 'console on pitft' and 'GPIO #23 on/off button'

## setup correct rotation
sed -i 's;dtoverlay=pitft22,rotate=270;dtoverlay=pitft22,rotate=90;' /boot/config.txt

## NOTE: 2016-04-14: might not be neccesary since pitft28r and notros kernel stuff seems to be in the upstream raspian kernel -> enabeling that overlay could be enough
## ok, tested on vanilla raspbian: the kernel works, but needs the pitft_22_ dtb+config options from adafruit to work :-D



##### setup hdmi/framebuffer0 #####
# change framebuffer size
sed -i 's/#framebuffer_width=1280/framebuffer_width=320/;s/#framebuffer_height=720/framebuffer_height=240/' /boot/config.txt
# set resolution
sed -i 's/#hdmi_force_hotplug=1/hdmi_force_hotplug=1\nhdmi_cvt=320 240 60 1 0 0 0\nhdmi_group=2\nhdmi_mode=87/' /boot/config.txt


##### download the piboy-zero software-sources
svn export https://github.com/JohSchneider/piboy-zero/trunk/software /tmp/software
cd /tmp/software

##### build&install fbcp #####
# which copies the hdmi output to the tft screen
(
    cd rpi-fbcp
    mkdir build
    cd build
    cmake ..
    make
    make install
    update-rc.d fbcp defaults
)

##### build&install retrogame #####
# the gpio button daemon
(
    cd Adafruit-Retrogame
    make
    make install
    update-rc.d retrogame defaults
)

##### install pwm audio #####
cp linux-config//pwm-audio-pi-zero-overlay.dtb /boot/overlays
if grep -Fxq 'dtoverlay=pwm-audio-pi-zero' /boot/config.txt
then
    echo 'pwm audio overlay already installed'
else
    echo 'dtoverlay=pwm-audio-pi-zero' >> /boot/config.txt
fi

##### build&install pi-blaster for PWM backlight ####
#git clone https://github.com/sarfata/pi-blaster.git backlight_software-pwm_pi-blaster
(
cd backlight_software-pwm_pi-blaster
./autogen.sh
./configure && make
make install
cp linux-config/etc_default_pi-blaster /etc/default/pi-blaster
)

##### install pi-boy zero splashscreen #####
cp linux-config/splashscreen.png /opt/retropie/supplementary/splashscreen/piboy-zero.png
cat > /etc/splashscreen.list <<EOF
/opt/retropie/supplementary/splashscreen/piboy-zero.png
EOF

##### install power button service #####
cp powerbutton/power_btn.service /etc/systemd/system
systemctl reload-daemon
systemctl enable power_btn.service
