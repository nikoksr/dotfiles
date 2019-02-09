# ~/.zprofile


##############################
#
# ENVIRONMENT             
#
##############################


export NPM_PACKAGES="${HOME}/.npm-packages"
export GOPATH=$HOME/go
export BOOST_ROOT="$BOOST_ROOT:/usr/local/boost_1_67_0"
export GEM_HOME=$HOME/.gem

export PATH="$PATH:$HOME/go/bin:/usr/local/bin:$HOME/.local/bin:$GOPATH/bin:/usr/local/anaconda3/bin:$NPM_PACKAGES/bin:$(ruby -e 'print Gem.user_dir')/bin"

# Unset manpath so we can inherit from /etc/manpath via the `manpath` command
unset MANPATH # delete if you already modified MANPATH elsewhere in your config
export MANPATH="$NPM_PACKAGES/share/man:$(manpath)"

export LANG=en_US.UTF-8

export VISUAL=emacs
export EDITOR=vim


