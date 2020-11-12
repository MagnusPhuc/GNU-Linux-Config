#!/bin/sh

userresources=$HOME/.Xresources
usermodmap=$HOME/.Xmodmap
sysresources=/etc/X11/xinit/.Xresources
sysmodmap=/etc/X11/xinit/.Xmodmap

# merge in defaults and keymaps

if [ -f $sysresources ]; then







    xrdb -merge $sysresources

fi

if [ -f $sysmodmap ]; then
    xmodmap $sysmodmap
fi

if [ -f "$userresources" ]; then







    xrdb -merge "$userresources"

fi

if [ -f "$usermodmap" ]; then
    xmodmap "$usermodmap"
fi

# start some nice programs

if [ -d /etc/X11/xinit/xinitrc.d ] ; then
 for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do
  [ -x "$f" ] && . "$f"
 done
 unset f
fi

twm &
xfce4-panel --disable-wm-check &
#feh --bg-fill ~/Pictures/wallhaven-q6wd2l.png &
xclock -geometry 50x50-1+1 &
#xterm -geometry 80x50+494+51 &
#xterm -geometry 80x20+494-0 &
#exec xterm -geometry 80x66+0+0 -name login
#external_monitor=$(xrandr --query | grep 'HDMI-1')
#if[[$external_monitor = *connected* ]]; 
xrandr --output HDMI1 --primary --mode 1920x1080 --rotate normal --output eDP1 --mode 1920x1080 --rotate normal --right-of HDMI1
xrdb -load ~/.Xresources
#xscreensaver &
#sxhkd &
#alacritty &
flameshot &
ibus-daemon &
exec bspwm
