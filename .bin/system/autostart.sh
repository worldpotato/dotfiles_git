#feh -F $HOME/.bin/system/background/desktop_background.png &
#/usr/bin/picom -CGb & # picom with disabled shadows &
# bash script to activate slock after some amount of time
$HOME/.config/polybar/launch.sh & 2&> /dev/null
$HOME/.bin/system/setbg & 2&> /dev/null # set desktop background &
/usr/bin/nm-applet & 2&> /dev/null
/usr/bin/dunst &

numlockx on

# lock the screen after 5 min
$HOME/.bin/system/xsidle.sh slock &

xset s 300
sleep 2
/usr/bin/thunderbird & 2&> /dev/null
/usr/bin/qutebrowser & 2&> /dev/null
