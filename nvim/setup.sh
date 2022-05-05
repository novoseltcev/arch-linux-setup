#!/bin/sh

sudo pacman -Sy --noconfirm -q neovim

mkdir ~/.config/nvim 
cp config ~/.config/nvim/init.vim

echo "Open ~/.config/nvim/init.vim, enter \`:so%\` \`PlugInstall\`"
nvim ~/.config/nvim/init.vim
# DONE
