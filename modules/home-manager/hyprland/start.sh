#!/usr/bin/env bash

#init wallpaper
wl-paste --type text --watch cliphist store &
wl-paste --type image --watch cliphist store &
swww init &

swww img /home/ion/dotfiles/home-manager/nix/home-manager/tokyo_alley_night.jpg &

nm-applet --indicator &

waybar &

dunst
