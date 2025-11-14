#!/bin/bash

volume=$(pactl get-sink-volume @DEFAULT_SINK@ | awk '{print $5}' | sed 's/[^0-9]*//g')
A=$(pactl list sinks | grep "Mute")
muted=${A##* }

if [[ "$muted" == "yes" || "$volume" == "0" ]]; then
    icon="$HOME/.config/dunst/scripts/volume-mute.svg"
elif [[ "$volume" -lt "100" ]]; then
    icon="$HOME/.config/dunst/scripts/volume-normal.svg"
else
    icon="$HOME/.config/dunst/scripts/volume-max.svg"
fi

dunstify -a "volume" -i "$icon" -r 3456 -h int:value:"$volume" "Volume: ${volume}%"
echo ${volume}
