#!/bin/bash

#prequisities: arch kernel installed, internet connected with iwd from live usb 

#enter chroot env

pacman -S xorg alsa-utils bspwm sxhkd feh flameshot xscreensaver alacritty xsecurelock iw vim xrdb xrandr compton

#reboot
#after reboot

#adduser and add user to sudo group

useradd -m <yourusername>

EDITOR=vim visudo

#edit and add newly added user into sudo group
#exit chroot env
#internet connection
systemctl enable --now systemd-networkd systemd-resolved iwd
networkctl status -a #get the station name (usually wlan0)
vi /etc/systemd/network/20-wireless.network
#add exact the follwowing parm:
[Match]
Name=wlan0 
[Network]
DHCP=yes
#save and exit
systemctl restart systemd-networkd
iwctl
#enter network parms
#git clone and copy all the file on repo to the respective places
#~/.Xinitrc
#~/.Xresources
#~/.bashrc
#~/.vimrc
#~/.config/bspwm/bspwmrc
#~/.config/sxhkd/sxhkdrc
#config preferd keyboard shortcut, monitors, screens
#run X server
startx

