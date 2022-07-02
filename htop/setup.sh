#!/bin/sh

sudo pacman -Sy --needed --noconfirm -q htop

mkdir ~/.config/htop
cp htopc ~/.config/htop/htopc
cp htoprc ~/.config/htop/htoprc
# DONE
