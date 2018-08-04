# $PATH
export PATH="$HOME/bin:/usr/local/bin:$PATH"
export EDITOR=vim
export VISUAL="$EDITOR"

# oh-my-zsh instal path
ZSH=/usr/share/oh-my-zsh/

# theme
#ZSH_THEME="miloshadzic"
ZSH_THEME="agnoster"
# disable bi-weekly auto-update checks
DISABLE_AUTO_UPDATE="true"

# command auto-correction
# ENABLE_CORRECTION="true"

# display red dots whilst waiting for completion
# COMPLETION_WAITING_DOTS="true"

# history/time stamps
HIST_STAMPS="dd.mm.yyyy"

# plugins
plugins=(
  git
  colored-man-pages
)

# aliases

## vim
alias vi="vim"

## update
alias upd='trizen -Syu'

## update and clean
alias updac='trizen -Syu; sudo pacman -Rns $(pacman -Qtdq); sudo pacman -Sc'

## update firmware
alias updfw='fwupdmgr get-devices; fwupdmgr refresh; fwupdmgr get-updates; fwupdmgr update'

## cpu governor powersave (default)
alias cpusave='sudo cpupower frequency-set -g powersave'

## cpu governor performance
alias cpuperf='sudo cpupower frequency-set -g performance'

## git cheatsheet
alias gitshtcht='okular ~/documents/git-cheatsheet-EN-dark.pdf'

## grep color
alias grep='grep --color=auto'

## diff color
alias diff='diff --color=auto'

## ls color
alias ls='ls --color=auto'

## shutdown
alias shtdwn='shutdown -P now'

## rsync /home
alias synchome='rsync -prult /home/niko admin@192.168.10.250:/betty/media/niko/home'

## rsync /home + verbosity
alias synchomeverbose='rsync -Pvprult /home/niko admin@192.168.10.250:/betty/media/niko/home'

## change mtu to 1500
alias mtustd='sudo ip link set wlp2s0 mtu 1500'

## change mtu to 9000
alias mtumax='sudo ip link set wlp2s0 mtu 2300'

ZSH_CACHE_DIR=$HOME/.cache/oh-my-zsh
if [[ ! -d $ZSH_CACHE_DIR ]]; then
  mkdir $ZSH_CACHE_DIR
fi

source $ZSH/oh-my-zsh.sh
