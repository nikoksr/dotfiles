# path
export PATH="$HOME/bin:/usr/local/bin:$HOME/.local/bin:$PATH"

# path to your oh-my-zsh installation.
export ZSH="/home/niko/.oh-my-zsh"

# theme
ZSH_THEME="agnoster"

# history
HIST_STAMPS="dd/mm/yyyy"

# 10ms for key sequences 
# KEYTIMEOUT=1

# plugins
plugins=(
  colored-man-pages
  cp
  extract
  history
  web-search
)

source $ZSH/oh-my-zsh.sh
source $HOME/.aliases

# You may need to manually set your language environment
export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='nvim'
else
  export EDITOR='nvim'
fi
