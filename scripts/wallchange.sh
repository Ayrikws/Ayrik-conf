#!/usr/bin/env bash

# Directory containing wallpapers
WALL_DIR="$HOME/Pictures/Wallpapers"

# Pick a random wallpaper
WALLPAPER=$(find "$WALL_DIR" -type f \( -iname "*.png" -o -iname "*.jpg" \) | shuf -n 1)

# Start swww if not running
if ! pgrep -x swww-daemon >/dev/null; then
    swww-daemon &
    sleep 1
fi

# Change wallpaper with animation
swww img "$WALLPAPER" \
    --transition-type any \
    --transition-duration 2 \
    --transition-fps 60

