alias e="vim"
alias be="bundle exec"
alias plist='ps -axcr -o "pid,pcpu,pmem,time,comm"'
alias gs="git status"
alias gc="git checkout"
alias gb="git branch"
alias ls="ls -G"
alias tr="tmux attach"
alias h="history | grep"
alias gplay="open http://localhost:3999/ && cd $GOROOT/misc/goplay && go run goplay.go"

function gitCheckoutAndTrack() {
  git checkout --track -b "$1" origin/"$1"
}
alias gcot=gitCheckoutAndTrack


# Path to your oh-my-zsh configuration.
export ZSH=$HOME/.oh-my-zsh
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
export ZSH_THEME="aussiegeek"

plugins=(git)

source $ZSH/oh-my-zsh.sh

unsetopt correct_all

set -o vi

setopt auto_cd
cdpath=($HOME/work $HOME/)

export PATH=/usr/local/sbin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/share/npm/bin:${PATH}
export GOROOT=$HOME/src/go
export GOPATH=$HOME/gopath
export PATH=$HOME/src/go/bin:${PATH}:${GOPATH}/bin
export LC_ALL=en_US.UTF-8
export PYTHONPATH=/usr/local/lib/python2.7/site-packages:$PYTHONPATH

source /usr/local/share/chruby/chruby.sh
source /usr/local/share/chruby/auto.sh


export PATH="/usr/local/heroku/bin:$PATH"

source ~/dotfiles/.gild 2> /dev/null
source ~/.fzf.zsh
