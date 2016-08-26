#!/bin/sh

# Load system-wide configs.
if [ -d /etc/X11/xinit/xinitrc.d ] ; then
 for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do
  [ -x "$f" ] && . "$f"
 done
 unset f
fi

# Load ~/.Xresources
[[ -f ~/.Xresources ]] && xrdb -merge ~/.Xresources

# HiDPI settings.
xrandr --output 'eDP1' --dpi 144

# Setup external monitor if it's connected.
if xrandr | grep "HDMI2 connected"; then
  xrandr --output HDMI2 --auto --right-of eDP1
fi

# Set background colour.
xsetroot -solid '#d0d0d0'

# Start ssh-agent.
eval $(ssh-agent)

# Start the `i3` window manager.
exec i3
