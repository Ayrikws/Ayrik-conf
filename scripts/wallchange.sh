#!/usr/bin/env bash

WALL_DIR="$HOME/Pictures/Wallpapers"

WALLPAPER=$(find "$WALL_DIR" -type f \( -iname "*.png" -o -iname "*.jpg" \) | shuf -n 1)

if ! pgrep -x swww-daemon >/dev/null; then
    swww-daemon &
    sleep 1
fi

swww img "$WALLPAPER" \
    --transition-type any \
    --transition-duration 2 \
    --transition-fps 60

