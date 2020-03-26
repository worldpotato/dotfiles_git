if [ -f ~/.zshrc ]; then
   source ~/.zshrc
fi

startx ~/.xinitrc /usr/bin/i3
