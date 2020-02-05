# ~/.zprofile


##############################
#
# ENVIRONMENT             
#
##############################


export GOPATH=$HOME/dev/go
export PATH="$PATH:$GOPATH/bin:/usr/local/bin:$HOME/.local/bin:$GOPATH/bin:$HOME/.config/composer/vendor/bin:$HOME/.scripts"
export BOOST_ROOT="$BOOST_ROOT:/usr/local/boost_1_67_0"

export LANG=en_US.UTF-8

export VISUAL=vim
export EDITOR="$VISUAL"

if test “${PS1+set}”; then 
    export CDPATH="$CDPATH:$GOPATH/src"
fi

# Import colorscheme from 'wal' asynchronously
(cat ~/.cache/wal/sequences &)

# Background color with transparency
source ~/.cache/wal/colors.sh
export color0_alpha="#22${color0/'#'}"

# Npm user-wide installations
PATH="$HOME/.node_modules/bin:$PATH"
export npm_config_prefix=~/.node_modules

# GPG Signing
export GPG_TTY=$(tty)
