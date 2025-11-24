#!/bin/bash

current=$(light | bc)

message="Brightness: ${current}%"

if (( $(echo "$current < 50" |bc -l) )); then
	icon="~/.config/dunst/scripts/brightness-low.svg"
else
	icon="~/.config/dunst/scripts/brightness-high.svg"
fi

dunstify -i "$icon" -h int:value:"$current" "$message" -h string:x-dunst-stack-tag:"Brightness"
echo ${current}
