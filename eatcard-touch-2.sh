#!/bin/bash

noPass(){
printf "\n\nPlease make sure you run the first script, this will allow you to run a command
The command you need to run is xinit
This will give you the Touchscreen ID which you need to complete this script\n\n"
exit
}

yesPass(){
echo "What was the ID of the touchscreen?"
read touchID
echo "ID selected = $touchID"

# Create .bash_profile to autostart the environmentreboo
printf 'startx' > /home/user/.bash_profile
chown user:user /home/user/.bash_profile
printf "

[X] - Automatic app load installed

"

# Openbox autostart settings
printf "
xset s off
xset s noblank
xset -dpms

xrandr -o left
xrandxrand --fb 1080x1920
xinput set-prop '$touchID' 'Coordinate Transformation Matrix' 0 -1 1 1 0 0 0 0 1
chromium-browser --disable-translate --disable-crash-reporter --kiosk 'https://eatcard.nl'
" > /etc/xdg/openbox/autostart
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
exit
}


while true; do
    read -p "Did you run the 1st script and get the touchscreen ID? (y/n): " yn
    case $yn in 
        y|Y* ) yesPass;;
        n|N* ) noPass;;
        * ) echo "Please answer yes or no.";;
    esac
done