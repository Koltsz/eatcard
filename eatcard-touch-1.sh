#!/bin/bash

# Update and upgrade OS
apt-get update && apt-get -y upgrade
# Install required software
apt-get install xserver-xorg x11-xserver-utils xinit openbox -y
# Install xinput, xterm and network-manager
apt-get install xinput xterm network-manager -y
# INstall intel driver
apt-get install xserver-xorg-video-intel -y
# Install Chromium browser
apt-get install chromium-browser -y 
printf "

[X] - OS update and software installed

"

# Openbox autostart settings
printf '
xterm
chromium-browser 
' > /etc/xdg/openbox/autostart

runuser -l user 'startx'