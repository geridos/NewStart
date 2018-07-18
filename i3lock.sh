#!/bin/bash

var=$(cat ~/.config/.i3lockvar)

i3lock -t -i ~/Pictures/background/$(ls -l /home/bertrand/Pictures/background | sed -n ${var}p | awk '{print $NF}') -p default -n --color=000000

nbfile=$(ls -1 /home/bertrand/Pictures/background | wc -l)

if [ $var -gt $nbfile ]
then
    echo 2 > ~/.config/.i3lockvar
else
    echo $((++var)) > ~/.config/.i3lockvar
fi
