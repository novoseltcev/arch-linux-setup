#!/bin/sh

rm -r ~/Desktop
rm -r ~/Documents
rm -r ~/Video
rm -r ~/Music

sudo pacman -Sy --noconfirm -q jq

cat config | jq .remove_dirs[] | while read line;
do 
    rm -r $HOME/$line
done

cat config | jq .app[] | while read line; 
do
    printf $line
    sudo pacman -S $line
done

#wget https://eu5.dl.visual-paradigm.com/visual-paradigm/vp16.3/20220101/Visual_Paradigm_16_3_20220101_Linux64.sh
#sh Visual_Paradigm_16_3_20220101_Linux64.sh
#rm -f Visual_Paradigm_16_3_20220101_Linux64.sh

