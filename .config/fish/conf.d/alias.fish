alias tty-clock="tty-clock -sbcDC2 -f %d.%m.%Y"

alias ip="ip -c"

alias l="exa -lhgb --git --color-scale --icons" # list, header, group, binary, all, git, color for size
alias ll="exa -lhgba --git --color-scale --icons"

alias dotfiles='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'

alias corona='curl -L covid19.trackercli.com/history/germany'
alias todos="nvim /home/worldpotato/nextcloud/tasks/list_of_tasks.csv"

alias ps="ps auxf" # show all processes, display user-oriented format, show processes that aren't attached to ttys, use full-format listing

alias psg="\ps aux | rg -v rg | rg -i -e VSZ -e" # search for a running process. example: psg firefox

alias acli="arduino-cli"

alias npw="xkcdpass -n 4 -d _ -C first"

alias today="date --iso-8601"

alias vimwiki="nvim -c VimwikiUISelect"

alias g=git
alias 'gc!'='git commit -v --amend'
alias gca='git commit -v -a'
alias 'gca!'='git commit -v -a --amend'
alias gcam='git commit -a -m'
alias 'gcan!'='git commit -v -a --no-edit --amend'
alias 'gcans!'='git commit -v -a -s --no-edit --amend'
alias gcas='git commit -a -s'
alias gcasm='git commit -a -s -m'
alias gcb='git checkout -b'
alias gcf='git config --list'
alias gcl='git clone --recurse-submodules'
alias gclean='git clean -id'
alias gcmsg='git commit -m'
alias 'gcn!'='git commit -v --no-edit --amend'
alias gco='git checkout'
alias gcor='git checkout --recurse-submodules'
alias gcount='git shortlog -sn'
alias gcp='git cherry-pick'
alias gcpa='git cherry-pick --abort'
alias gcpc='git cherry-pick --continue'
alias gcs='git commit -S'
alias gcsm='git commit -s -m'
alias gcss='git commit -S -s'
alias gcssm='git commit -S -s -m'
alias gd='git diff'
alias gdca='git diff --cached'
alias gdcw='git diff --cached --word-diff'
alias gds='git diff --staged'
alias gdt='git diff-tree --no-commit-id --name-only -r'
alias gdw='git diff --word-diff'
alias gf='git fetch'
alias gfa='git fetch --all --prune --jobs=10'
alias gfg='git ls-files | grep'
alias gfl='git flow'
alias gflf='git flow feature'
alias gflff='git flow feature finish'
alias gflfp='git flow feature publish'
alias gflfpll='git flow feature pull'
alias gflfs='git flow feature start'
alias gflh='git flow hotfix'
alias gflhf='git flow hotfix finish'
alias gflhp='git flow hotfix publish'
alias gflhs='git flow hotfix start'
alias gfli='git flow init'
alias gflr='git flow release'
alias gflrf='git flow release finish'
alias gflrp='git flow release publish'
alias gflrs='git flow release start'
alias gfo='git fetch origin'
alias gg='git gui citool'
alias gga='git gui citool --amend'
alias ghh='git help'
alias gignore='git update-index --assume-unchanged'
alias gk='\gitk --all --branches'
alias gl='git pull'
alias glg='git log --stat'
alias glgg='git log --graph'
alias glgga='git log --graph --decorate --all'
alias glgm='git log --graph --max-count=10'
alias glgp='git log --stat -p'
alias glo='git log --oneline --decorate'
alias glod='git log --graph --pretty='\''%Cred%h%Creset -%C(auto)%d%Creset %s %Cgreen(%ad) %C(bold blue)<%an>%Creset'\'
alias glods='git log --graph --pretty='\''%Cred%h%Creset -%C(auto)%d%Creset %s %Cgreen(%ad) %C(bold blue)<%an>%Creset'\'' --date=short'
alias glog='git log --oneline --decorate --graph'
alias gloga='git log --oneline --decorate --graph --all'
alias glol='git log --graph --pretty='\''%Cred%h%Creset -%C(auto)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset'\'
alias glola='git log --graph --pretty='\''%Cred%h%Creset -%C(auto)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset'\'' --all'
alias glols='git log --graph --pretty='\''%Cred%h%Creset -%C(auto)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset'\'' --stat'
alias glp=_git_log_prettily
alias gm='git merge'
alias gma='git merge --abort'
alias gmt='git mergetool --no-prompt'
alias gmtvim='git mergetool --no-prompt --tool=vimdiff'
alias gp='git push'
alias gpd='git push --dry-run'
alias gpf='git push --force-with-lease'
alias 'gpf!'='git push --force'
alias gpoat='git push origin --all && git push origin --tags'
alias gpr='git pull --rebase'
alias gpristine='git reset --hard && git clean -dffx'
alias gpu='git push upstream'
alias gpv='git push -v'
alias gr='git remote'
alias gra='git remote add'
alias grb='git rebase'
alias grba='git rebase --abort'
alias grbc='git rebase --continue'
alias grbd='git rebase develop'
alias grbi='git rebase -i'
alias grbo='git rebase --onto'
alias grbs='git rebase --skip'

