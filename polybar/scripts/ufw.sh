#!/bin/sh

ufw="$(cat /home/niko/.config/polybar/scripts/ufw_res.txt)"

if ((ufw == 1)); then
    echo "off"
else
    echo "on"
fi
