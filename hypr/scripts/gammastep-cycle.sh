#!/bin/bash

STATE_FILE="/tmp/hyprshade_state"
current=$(cat "$STATE_FILE" 2>/dev/null || echo "off")

case "$current" in
    off)
        hyprshade on warm
        echo "warm" > "$STATE_FILE"
        notify-send "Shade" "Warm"
        ;;
    warm)
        hyprshade on cool
        echo "cool" > "$STATE_FILE"
        notify-send "Shade" "Cool"
        ;;
    cool)
        hyprshade off
        echo "off" > "$STATE_FILE"
        notify-send "Shade" "Off"
        ;;
esac
