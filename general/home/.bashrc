#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return


# functions
function check_exist() {
    if ! command -v $1 &> /dev/null
    then
        echo "install $1 to use command."
        return 1
    fi
}

function search_filesystem() {
    check_exist fzf || return 1
    check_exist fd

    if [ $? != 0 ]; then
        echo "$(find | fzf)"
    else
        echo "$(fd | fzf)"
    fi
}

function gd() {
    cd $(search_filesystem d)
}

function of() {
    $1 "$(search_filesystem f)"
}

# alisases 
alias ls='ls --color=auto'
alias n='nnn -de'
alias v='nvim'
alias vi='nvim'
alias vim='nvim'
alias hybrid-sleep='systemctl hybrid-sleep'
alias change-wallpaper='~/src/random/wallpaper.sh'
alias battery-level='cat /sys/class/power_supply/BAT0/capacity'

alias ed='of "nvim --clean"'
alias pic='of feh'
alias pdf='of zathura'

alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'

#PS1='[\u@\h \W]\$ '
PS1='\[\033[1;32m\][\u@\h \[\033[1;33m\]\W\[\033[1;32m\]]\[\033[1;31m\]\$ \[\033[00m\]'

export EDITOR=nvim

export XDG_DATA_HOME=$HOME/.local/share
export XDG_CONFIG_HOME=$HOME/.config
export XDG_STATE_HOME=$HOME/.local/state
export XDG_CACHE_HOME=$HOME/.cache

export CARGO_HOME="$XDG_DATA_HOME"/cargo
