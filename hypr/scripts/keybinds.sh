#!/bin/bash

CONFIG="/home/niko/.config/hypr/hyprland.conf"

# Grabs every line starting with 'bind', trims spaces, and sends it to rofi
grep -E "^bind[a-z]* *=" "$CONFIG" | sed -e 's/^bind *= *//' -e 's/^bind[a-z]* *= *//' | rofi -dmenu -p "Hyprland Hotkeys" -theme-str 'window {width: 40%;}'
