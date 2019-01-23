# ~/.zprofile


##############################
#
# ENVIRONMENT             
#
##############################


export GOPATH=$HOME/go
export PATH="$PATH:$HOME/go/bin:/usr/local/bin:$HOME/.local/bin:$GOPATH/bin"
export BOOST_ROOT="$BOOST_ROOT:/usr/local/boost_1_67_0"

PATH="$PATH:$(ruby -e 'print Gem.user_dir')/bin"
export GEM_HOME=$HOME/.gem

export LANG=en_US.UTF-8

export VISUAL=vim
export EDITOR="$VISUAL"


