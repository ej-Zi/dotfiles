#!/bin/bash

WALLPAPER_DIRECTORY=~/Pictures/hypr-wallpaper

WALLPAPER_MORNING="1.jpg"
WALLPAPER_DAY="1.jpg"
WALLPAPER_EVENING="3.jpg"
WALLPAPER_NIGHT="5.jpg"

CURRENT_HOUR=$(date +%H)

SELECTED_FILE=""

if (( $CURRENT_HOUR >= 6 && $CURRENT_HOUR < 12 )); then
SELECTED_FILE=$WALLPAPER_MORNING
elif (( $CURRENT_HOUR >= 12 && $CURRENT_HOUR < 14 )); then
SELECTED_FILE=$WALLPAPER_DAY
elif (( $CURRENT_HOUR >= 14 && $CURRENT_HOUR < 18 )); then
SELECTED_FILE=$WALLPAPER_EVENING
else
SELECTED_FILE=$WALLPAPER_NIGHT
fi

WALLPAPER="$WALLPAPER_DIRECTORY/$SELECTED_FILE"

export WAYLAND_DISPLAY=wayland-1

i=0
while [ $i -le 5 ]; do
    ((i++))
    if [ -S /run/user/$UID/hypr/*/.hyprpaper.sock ]; then 
        hyprctl hyprpaper preload "$WALLPAPER"
        hyprctl hyprpaper wallpaper ",$WALLPAPER"
        hyprctl hyprpaper unload unused
    break
    fi

    sleep 1
done


