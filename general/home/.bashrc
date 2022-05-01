#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias n='nnn -de'
alias v='nvim'
alias vi='nvim'
alias vim='nvim'
alias hybrid-sleep='systemctl hybrid-sleep'
alias change-wallpaper='~/src/random/wallpaper.sh'
alias battery-level='cat /sys/class/power_supply/BAT0/capacity'

alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'

#PS1='[\u@\h \W]\$ '
PS1='\[\033[1;32m\][\u@\h \[\033[1;33m\]\W\[\033[1;32m\]]\[\033[1;31m\]\$ \[\033[00m\]'

export EDITOR=nvim
