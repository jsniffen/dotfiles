# Path to your oh-my-zsh installation.
  export ZSH=/cygdrive/c/home/.oh-my-zsh
  export TERM="xterm-256color"

ZSH_THEME="agnoster"
# ZSH_THEME="simple"
# ZSH_THEME="garyblessington"
# ZSH_THEME="minimal"

plugins=(git zsh-syntax-highlighting bower chucknorris svn)

# User configuration

export PATH=/usr/bin:$PATH

source $ZSH/oh-my-zsh.sh

# tmux aliases
alias ta='tmux attach'
alias tls='tmux ls'
alias tat='tmux attach -t'
alias tns='tmux new-session -s'

alias tmux="tmux -2"
alias la="ls -a" 

BASE16_SHELL=$HOME/.config/base16-shell/
[ -n "$PS1" ] && [ -s $BASE16_SHELL/profile_helper.sh ] && eval "$($BASE16_SHELL/profile_helper.sh)"

