#!/bin/bash

# Update and upgrade OS
apt-get update && apt-get -y upgrade
# Install required software
apt-get install xserver-xorg x11-xserver-utils xinit openbox -y
# Install xinput
apt-get install xinput -y
# Install network-manager
apt-get install network-manager -y
# Install Chromium browser
apt-get install chromium-browser -y 
printf "

[X] - OS update and software installed

"

# Create .bash_profile to autostart the environmentreboo
printf 'startx' > /home/user/.bash_profile
chown user:user /home/user/.bash_profile
printf "

[X] - Automatic app load installed

"

# Openbox autostart settings
printf '
xset s off
xset s noblank
xset -dpms

xrandr -o left
xrandxrand --fb 1080x1920
xinput set-prop '$screenID' 'Coordinate Transformation Matrix' 0 -1 1 1 0 0 0 0 1
chromium-browser --disable-translate --disable-crash-reporter --kiosk "https://eatcard.nl"
' > /etc/xdg/openbox/autostart
printf "

[X] - Screen and browser setup COMPLETED

"

# Openbox Keybindings
wget https://raw.githubusercontent.com/Koltsz/eatcard/master/rc.xml -P /home/user/.config/openbox/
printf "

[X] - Disabled shorcut keys COMPLETED

"

# Auto Login
mkdir /etc/systemd/system/getty@tty1.service.d
printf '
[Service]
ExecStart=
ExecStart=-/sbin/agetty --noissue --autologin user %%I $$TERM
Type=idle' > /etc/systemd/system/getty@tty1.service.d/override.conf
printf "

[X] - Automatic login installed

"

printf "Reboot for settings to take affect!"