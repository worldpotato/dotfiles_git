# that file is used at login with zsh as login shell
if [ -f ~/.zshrc ]; then
   source ~/.zshrc
fi

export PATH="$PATH:$HOME/.bin/display"
export PATH="$PATH:$HOME/.bin/wifi"
export PATH="$PATH:$HOME/.bin/misc"
export PATH="$PATH:$HOME/.bin/usb"
export PATH="$PATH:$HOME/.bin/bluetooth"
export PATH="$PATH:$HOME/.gem/ruby/2.6.0/bin"
export PATH="$PATH:$HOME/.bin/system"
export PATH="$PATH:$GOPATH/bin"
export PATH="$PATH:$HOME/.gem/ruby/2.7.0/bin"

# start the xserver and uses ~/.xinitrc only at tty1
if [[ "$(tty)" == '/dev/tty1' ]]; then
    exec startx
fi
