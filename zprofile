# ~/.zprofile

#####################
# ENV               #
#####################
export GOPATH=$HOME/dev/go
export DENO_INSTALL="/home/niko/.deno"
export PATH="$PATH:$GOPATH/bin:/usr/local/bin:$HOME/.local/bin:$GOPATH/bin:$HOME/.scripts:/opt/osxcross/bin:$HOME/.node_modules/bin:$DENO_INSTALL/bin:/snap/bin"

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
    export CDPATH="$CDPATH:/home/niko/dev/github/personal"
fi

if [[ "$XDG_CURRENT_DESKTOP" == "i3" ]] || [[ ! -z "$SWAYSOCK" ]]; then
    # Import colorscheme from 'wal' asynchronously
    # (cat ~/.cache/wal/sequences &)

    # Background color with transparency
    # source ~/.cache/wal/colors.sh
    # export color0_alpha="#22${color0/'#'}"

    (cat ~/.cache/wal/sequences &)
    export MOZ_ENABLE_WAYLAND=1
fi

#####################
# GPG               #
#####################
export GPG_TTY=$(tty)


#####################
# OSX CROSS         #
#####################
export LD_LIBRARY_PATH="/opt/osxcross/lib"

