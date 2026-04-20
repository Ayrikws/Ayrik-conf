#!/usr/bin/env bash

# Gracefully kill existing Waybar (SIGTERM)
pkill waybar

# Wait a moment to let it shut down
sleep 0.5

# Restart Waybar
waybar &

