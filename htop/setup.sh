#!/bin/sh

sudo pacman -Sy --noconfirm -q htop

mkdir ~/.config/htop
cp config ~/.config/htop/htopc
# DONE
