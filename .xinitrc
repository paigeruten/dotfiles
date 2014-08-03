#!/bin/sh

# Load system-wide configs.
if [ -d /etc/X11/xinit/xinitrc.d ]; then
  for f in /etc/X11/xinit/xinitrc.d/*; do
    [ -x "$f" ] && . "$f"
  done
  unset f
fi

# Load ~/.Xresources.
[[ -f ~/.Xresources ]] && xrdb -merge ~/.Xresources

# Setup external monitor if it's connected.
if xrandr | grep "DP-1 connected"; then
  xrandr --output DP-1 --auto --right-of LVDS-1
fi

# Set background wallpaper.
feh --bg-tile ~/images/backgrounds/current.jpg &

# Start the `i3` window manager.
exec i3

