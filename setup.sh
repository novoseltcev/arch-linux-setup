#!/bin/sh


# apps
sudo pacman -Sy --noconfirm -q telegram-desktop
sudo pacman -Sy --noconfirm -q firefox
sudo pacman -Sy --noconfirm -q neovim
mkdir $HOME/.config/nvim        
cp config/nvim.cfg > $HOME/.config/nvim/init.vim

sudo pacman -Sy --noconfirm -q htop
cp config/htop.cfg $HOME/.config/htop/htoprc 

sudo pacman -Sy --noconfirm -q dolphin
wget https://eu5.dl.visual-paradigm.com/visual-paradigm/vp16.3/20220101/Visual_Paradigm_16_3_20220101_Linux64.sh
sh Visual_Paradigm_16_3_20220101_Linux64.sh
rm Visual_Paradigm_16_3_20220101_Linux64.sh

# devops
sudo pacman -Sy --noconfirm -q docker
sudo pacman -Sy --noconfirm -q docker-compose


# software design
wget https://eu5.dl.visual-paradigm.com/visual-paradigm/vp16.3/20220101/Visual_Paradigm_16_3_20220101_Linux64.sh
sh Visual_Paradigm_16_3_20220101_Linux64.sh
rm Visual_Paradigm_16_3_20220101_Linux64.sh


# terminal
sudo pacman -Sy --noconfirm -q fish
fish
sudo pacman -Sy --noconfirm -q fisher

fisher install jethrokuan/fzf
fisher install jethrokuan/z

which fish | sudo tee -a /etc/shells
chsh -s `which fish`


# bash-like utils
sudo pacman -Sy --noconfirm -q magic-wormhole
sudo pacman -Sy --noconfirm -q bat
sudo pacman -Sy --noconfirm -q ripgrep 



mkdir $HOME/JetBrains
mkdir $HOME/GIT


# set wallpapers
mkdir $HOME/Pictures/wallpapers
cp walpapers $HOME/Pictures/wallpapers
sudo pacman -Sy --noconfirm -q feh
ls $HOME/Pictures/wallpapers/1.* -1 | xargs -n 1 feh --bg-scale


# add utils
mkdir $HOME/Utils
touch reset_lang | printf "#!/bin/sh\nsetxkbmap -layout us,ru -option grp:caps_toggle" > reset_lang
