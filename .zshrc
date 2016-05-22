# Path to your oh-my-zsh installation.
  export ZSH=/cygdrive/c/home/.oh-my-zsh
  export TERM="xterm-256color"

ZSH_THEME="my-theme"

plugins=(git zsh-syntax-highlighting)

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

BASE16_SHELL="$HOME/.config/base16-shell/base16-solarized.dark.sh"
[[ -s $BASE16_SHELL ]] && source $BASE16_SHELL

