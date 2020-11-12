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

#internet connection
systemctl enable --now systemd-networkd systemd-resolved iwd
vi /etc/systemd/network/20-wireless.network
#add exact the follwowing parm:
[Match]
Name=wlan0 #run networkctl status -a for exact station
[Network]
DHCP=yes
#save and exit 
#git clone and copy all the file on repo to the respective places
#~/.Xinitrc
#~/.Xresources
#~/.bashrc
#~/.vimrc
#~/.config/bspwm/bspwmrc
#~/.config/sxhkd/sxhkdrc
