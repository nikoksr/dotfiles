# ~/.zprofile


##############################
#
# ENVIRONMENT             
#
##############################


export GOPATH=$HOME/dev/go
export PATH="$PATH:$GOPATH/bin:/usr/local/bin:$HOME/.local/bin:$GOPATH/bin:$HOME/.config/composer/vendor/bin"
export BOOST_ROOT="$BOOST_ROOT:/usr/local/boost_1_67_0"

export LANG=en_US.UTF-8

export VISUAL=vim
export EDITOR="$VISUAL"

# Import colorscheme from 'wal' asynchronously
(cat ~/.cache/wal/sequences &)

# Background color with transparency
source ~/.cache/wal/colors.sh
export color0_alpha="#22${color0/'#'}"

