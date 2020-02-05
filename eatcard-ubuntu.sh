#!/bin/bash

# Update and upgrade OS
apt-get update && apt-get -y upgrade
# Install Chromium browser
apt-get install chromium-browser -y 

printf "
[Desktop Entry]
Version=1.0
Name=EatCard App
GenericName=Web Browser
Exec=/usr/bin/chromium --disable-translate --disable-crash-reporter --kiosk 'https://app.eatcard.nl/account/login'
" > /usr/share/applications/eatcard-app.desktop

printf "

[X] - OS update and software installed

"