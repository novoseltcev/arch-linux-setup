#!/bin/sh

sudo pacman -Sy --noconfirm -q fish
fish
sudo pacman -Sy --noconfirm -q fisher

fisher install jethrokuan/fzf
fisher install jethrokuan/z

which fish | sudo tee -a /etc/shells
chsh -s `which fish`
