#!/bin/sh
# X session script for dwm rice on OpenBSD
# - Wallpaper with feh
# - Picom for blur and shadows (ALPHA/VANITYGAPS patches)
# - Polybar for status bar (nord theme, Hack Nerd icons)
# - Exec dwm (hybrid floating/tiling, toggle with Mod+F)

export XDG_CONFIG_HOME=$HOME/.config

# Set wallpaper (fill mode, change path as needed)
feh --bg-fill /home/nonsemper/.wallpapers/wallpaper4.png &

# Start picom (blur, shadows for gaps/alpha)
picom --config $XDG_CONFIG_HOME/picom.conf -b &

# Start polybar (nord bar with icons)
$XDG_CONFIG_HOME/polybar/launch.sh &

# Exec dwm (replaces shell, ends on logout)
exec dwm
