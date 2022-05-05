#!/bin/sh

mkdir $HOME/Utils

# set wallpapers
mkdir $HOME/Pictures/wallpapers
cp walpapers $HOME/Pictures/wallpapers

printf "#!/bin/sh\nls $HOME/Pictures/wallpapers/1.* -1 | xargs -n 1 feh --bg-scale" > $HOME/Utils/wallpaper
printf "#!/bin/sh\nsetxkbmap -layout us,ru -option grp:caps_toggle" > $HOME/Utils/reset_lang

echo "rdesktop -g 90% -5 -K -r disk:home=/home/st-a-novoseltcev/ -r clipboard:PRIMARYCLIPBOARD -r sound:off -x l -P skylab.sipc.miet.ru -d "SIPC" -u "8191108" -p miet_xueta" > $HOME/Utils/skylab
