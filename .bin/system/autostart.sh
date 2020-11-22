$HOME/.config/polybar/launch.sh & 2&> /dev/null
$HOME/.bin/system/setbg & 2&> /dev/null # set desktop background &
/usr/bin/nm-applet & 2&> /dev/null
/usr/bin/dunst &

# lock the screen after 5 min
$HOME/.bin/system/xsidle.sh slock &
xset s 300

/usr/bin/thunderbird & 2&> /dev/null
/usr/bin/qutebrowser & 2&> /dev/null
