#!/bin/sh
if ! updates=$(yay -Qu | wc -l); then
    updates=0
fi
echo "$updates"
