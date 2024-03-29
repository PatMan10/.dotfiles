export EDITOR='nvim'
export PATH=$HOME/bin:/usr/local/bin:$PATH
export ZSH="$HOME/.oh-my-zsh"

USE_POWERLINE="true"
ZSH_THEME="robbyrussell"
CASE_SENSITIVE="true"
ENABLE_CORRECTION="true"
COMPLETION_WAITING_DOTS="true"
HIST_STAMPS="dd.mm.yyyy"

zstyle ':omz:update' mode reminder
zstyle ':omz:update' frequency 14
zstyle :compinstall filename "/home/`whoami`/.zshrc"

plugins=(git)

source $ZSH/oh-my-zsh.sh

histfile=~/.histfile
histsize=2000
savehist=2000
setopt autocd notify
bindkey -v

# auto complete
autoload -Uz compinit
compinit
_comp_options+=(globdots)

# aliases
alias cls="clear"
