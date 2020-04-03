# setting gopath to a better path
export GOPATH=$HOME/.go
# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="worldpotato"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
DISABLE_UNTRACKED_FILES_DIRTY="true"

# Add wisely, as too many plugins slow down shell startup.
plugins=(git git-prompt git-extras httpie command-not-found extract sudo colored-man-pages zsh-syntax-highlighting pass fzf z gpg-agent rsync)

source $ZSH/oh-my-zsh.sh

export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
export LANG=en_US.UTF-8

# Compilation flags
export ARCHFLAGS="-arch x86_64"

alias vtop="vtop -t aid"
alias tty-clock="tty-clock -sbcDC2 -f %d.%m.%Y"
alias ip="ip -c"
alias l="exa -lhgb --git --color-scale" # list, header, group, binary, all, git, color for size
alias ll="exa -lhgba --git --color-scale"
alias viless="/usr/share/vim/vim81/macros/less.sh"
alias cfg='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
alias :wq=exit
alias :q=exit
alias corona='curl -L covid19.trackercli.com/history/germany'

alias ps="ps auxf" # # show all processes, display user-oriented format, show processes that aren't attached to ttys, use full-format listing
alias psg="\ps aux | rg -v rg | rg -i -e VSZ -e" # search for a running process. example: psg firefox
# PATH
export PATH="$PATH:/home/worldpotato/Flutter/flutter/bin"
export PATH="$PATH:/home/worldpotato/bin/display"
export PATH="$PATH:/home/worldpotato/bin/wifi"
export PATH="$PATH:/home/worldpotato/bin/misc"
export PATH="$PATH:/home/worldpotato/bin/usb"
export PATH="$PATH:/home/worldpotato/bin/bluetooth"
export PATH="$PATH:/home/worldpotato/.gem/ruby/2.6.0/bin"
export PATH="$PATH:/home/worldpotato/go/bin"

# added by travis gem
[ -f /home/worldpotato/.travis/travis.sh ] && source /home/worldpotato/.travis/travis.sh

# the fuck completion
eval $(thefuck --alias)

# export FZF
export FZF_BASE=/usr/bin/fzf

