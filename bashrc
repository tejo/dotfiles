alias e="nvim"
alias be="bundle exec"
alias plist='ps -axcr -o "pid,pcpu,pmem,time,comm"'
alias gs="git status"
alias s="git status -sb"
alias gco="git checkout"
alias gpr="git pull --rebase"
alias ls="ls -G"
alias tr="tmux attach"
alias h="history | grep"
alias gplay="open http://localhost:3999/ && cd $GOROOT/misc/goplay && go run goplay.go"
alias sc="screencapture -i ~/Desktop/$(date +"%m_%d_%Y_%H-%M-%S").png"

function gitCheckoutAndTrack() {
  git checkout --track -b "$1" origin/"$1"
}
alias gcot=gitCheckoutAndTrack



export PATH=/usr/local/sbin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/share/npm/bin:${PATH}
export GOROOT=$HOME/src/go
export GOPATH=$HOME/gopath
export PATH=$HOME/src/go/bin:${PATH}:${GOPATH}/bin
export LC_ALL=en_US.UTF-8

source /usr/local/share/chruby/chruby.sh
source /usr/local/share/chruby/auto.sh

export PATH="/usr/local/heroku/bin:$PATH"

alias backend_keys='ruby /Users/teo/gild/Tuna/gildsource/conf/config-broker-config.rb'

source ~/dotfiles/.gild 2> /dev/null

[ -f ~/.fzf.bash ] && source ~/.fzf.bash


# Avoid duplicates
export HISTCONTROL=ignoredups:erasedups  
# When the shell exits, append to the history file instead of overwriting it
shopt -s histappend

# After each command, append to the history file and reread it
export PROMPT_COMMAND="${PROMPT_COMMAND:+$PROMPT_COMMAND$'\n'}history -a; history -c; history -r"

source /usr/local/etc/bash_completion.d/git-completion.bash


if [[ $COLORTERM = gnome-* && $TERM = xterm ]]  && infocmp gnome-256color >/dev/null 2>&1; then TERM=gnome-256color; fi
if tput setaf 1 &> /dev/null; then
    tput sgr0
    if [[ $(tput colors) -ge 256 ]] 2>/dev/null; then
      MAGENTA=$(tput setaf 9)
      ORANGE=$(tput setaf 172)
      GREEN=$(tput setaf 190)
      PURPLE=$(tput setaf 141)
      WHITE=$(tput setaf 256)
    else
      MAGENTA=$(tput setaf 5)
      ORANGE=$(tput setaf 4)
      GREEN=$(tput setaf 2)
      PURPLE=$(tput setaf 1)
      WHITE=$(tput setaf 7)
    fi
    BOLD=$(tput bold)
    RESET=$(tput sgr0)
else
    MAGENTA="\033[1;31m"
    ORANGE="\033[1;33m"
    GREEN="\033[1;32m"
    PURPLE="\033[1;35m"
    WHITE="\033[1;37m"
    BOLD=""
    RESET="\033[m"
fi
 
parse_git_dirty () {
  [[ $(git status 2> /dev/null | tail -n1) != "nothing to commit (working directory clean)" ]] && echo "*"
}
parse_git_branch () {
  git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e "s/* \(.*\)/\1$(parse_git_dirty)/"
}
 
PS1="\[${BOLD}${MAGENTA}\]\u\[$WHITE\]@\[$ORANGE\]\h\[$GREEN\]\w\[$WHITE\]\$([[ -n \$(git branch 2> /dev/null) ]] && echo \" ~ \")\[$PURPLE\]\$(parse_git_branch)\[$WHITE\]\n\$ \[$RESET\]"

eval "$(thefuck-alias)"



. /Users/teo/torch/install/bin/torch-activate
