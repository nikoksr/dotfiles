# ~/.zprofile


##############################
#
# ENVIRONMENT             
#
##############################


export GOPATH=$HOME/dev/go
export DENO_INSTALL="/home/niko/.deno"
export PATH="$PATH:$GOPATH/bin:/usr/local/bin:$HOME/.local/bin:$GOPATH/bin:$HOME/.scripts:/opt/osxcross/bin:$HOME/.node_modules/bin:$DENO_INSTALL/bin:/snap/bin"

export LANG=en_US.UTF-8

export EDITOR='vim'
export VISUAL='code'
export TERM='xterm-256color'

# Global npm packages for current user
export npm_config_prefix=~/.node_modules

if test “${PS1+set}”; then 
    export CDPATH="$CDPATH:$GOPATH/src"
fi

if [[ "$XDG_CURRENT_DESKTOP" == "i3" ]]; then
    # Import colorscheme from 'wal' asynchronously
    (cat ~/.cache/wal/sequences &)

    # Background color with transparency
    source ~/.cache/wal/colors.sh
    export color0_alpha="#22${color0/'#'}"
fi

# GPG Signing
export GPG_TTY=$(tty)

# osxcross
export LD_LIBRARY_PATH="/opt/osxcross/lib"
