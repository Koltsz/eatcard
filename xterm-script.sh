#!/bin/bash

apt-get install xterm -y
apt-get install xinput -y

sed -i 's|chromium-browser|#chromium-browser|g' /etc/xdg/openbox/autostart
printf "\n\nxterm" >> /etc/xdg/openbox/autostart
