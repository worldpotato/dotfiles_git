if [ -f ~/.zshrc ]; then
   source ~/.zshrc
fi
exec startx ~/.xinitrc /usr/bin/i3 &> ~/.xsession-errors
xbacklight -set 0
