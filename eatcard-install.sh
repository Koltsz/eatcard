#!/bin/bash

# Update and upgrade OS
apt-get update && apt-get -y upgrade
# Install required software
apt-get install xserver-xorg x11-xserver-utils xinit openbox -y
# Install Chromium browser
apt-get install chromium-browser -y
printf "[X] - OS update and software installed"

# Create .bash_profile to autostart the environmentreboo
printf 'startx' > /home/user/.bash_profile
chown user:user /home/user/.bash_profile
printf "[X] - Automatic app load installed"

# Openbox autostart settings
mv /etc/xdg/openbox/autostart /etc/xdg/openbox/autostart-backup
printf '
xset s off
xset s noblank
xset -dpms

xrandr --orientation right
chromium-browser  --disbale-infobars --disable-translate --disable-breakpad --disable-crash-reporter --disable-sync --kiosk "https://eatcard.nl"
' > /etc/xdg/openbox/autostart
printf "[X] - Screen and browser setup completed"

# Openbox Keybindings
wget https://raw.githubusercontent.com/Koltsz/eatcard/master/rc.xml -P /home/user/.config/openbox/
printf "[X] - Disabled shorcut keys"

# Auto Login
mkdir /etc/systemd/system/getty@tty1.service.d
printf '
[Service]
ExecStart=
ExecStart=-/sbin/agetty --noissue --autologin user %%I $$TERM
Type=idle' > /etc/systemd/system/getty@tty1.service.d/override.conf
printf "[X] - Automatic login installed"