# ~/.zprofile

#####################
# ENV               #
#####################
export GOPATH=$HOME/dev/go
export PATH="$PATH:$GOPATH/bin:/usr/local/bin:$HOME/.local/bin:$HOME/.node_modules/bin:$HOME/.scripts"

export EDITOR='nvim'
export VISUAL=$EDITOR
export TERM='xterm-256color'
export PAGER='delta'
export SHELL='/bin/zsh'
export LANG='en_US.UTF-8'
export LC_ALL='en_US.UTF-8'

#####################
# NPM PACKAGES      #
#####################
export npm_config_prefix=~/.node_modules

if test “${PS1+set}”; then 
    export CDPATH="$CDPATH:/home/niko/dev/github/personal:/home/niko/dev/github/org/deploi"
fi

#####################
# WINDOW MANAGER    #
#####################
# Import colorscheme from 'wal' asynchronously
(cat ~/.cache/wal/sequences &)


if [[ ! -z "$SWAYSOCK" ]]; then
    export QT_QPA_PLATFORMTHEME=qt5ct
    export _JAVA_AWT_WM_NONREPARENTING=1
fi

# if [[ "$XDG_SESSION_TYPE" == "wayland" ]]; then
    # export MOZ_ENABLE_WAYLAND=1
# fi

#####################
# GPG               #
#####################
export GPG_TTY=$(tty)

