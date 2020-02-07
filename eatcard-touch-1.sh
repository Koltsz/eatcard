#!/bin/bash

# Graphics
add-apt-repository ppa:oibaf/graphics-drivers
# Update and upgrade OS
apt-get update && apt-get -y upgrade
# Install required software
apt-get install xserver-xorg x11-xserver-utils xinit -y
# Install xinput, xterm and network-manager
apt-get install xinput xterm network-manager -y
# INstall intel driver
apt-get install xserver-xorg-video-intel -y
# Install Chromium browser
apt-get install chromium-browser -y
# Install gnome session
apt-get install gnome-session -y
apt-get install gnome-tweaks -y

systemctl disable systemd-networkd-wait-online.service
systemctl mask systemd-networkd-wait-online.service

printf "

[X] - OS update and software installed

"

printf '
Section "Device"
   Identifier "Intel Graphics"
   Driver "intel"
   Option "AccelMethod" "uxa"
   Option "TearFree" "true"
   Option  "TripleBuffer" "true"
EndSection
' > /etc/X11/xorg.conf.d/20-intel.conf

printf "

[X] - Graphics change

FINISHED - You can reboot now

"