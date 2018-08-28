
### Added by Zplugin's installer
source '/home/niko/.zplugin/bin/zplugin.zsh'
autoload -Uz _zplugin
(( ${+_comps} )) && _comps[zplugin]=_zplugin
### End of Zplugin's installer chunk
zplugin load zdharma/history-search-multi-word

zplugin ice compile"*.lzui" from"notabug"
zplugin load zdharma/zui

# Binary release in archive, from Github-releases page; after automatic unpacking it provides program "fzf"

zplugin ice from"gh-r" as"program"; zplugin load junegunn/fzf-bin

# One other binary release, it needs renaming from `docker-compose-Linux-x86_64`.
# This is done by ice-mod `mv'{from} -> {to}'. There are multiple packages per
# single version, for OS X, Linux and Windows – so ice-mod `bpick' is used to
# select Linux package – in this case this is not needed, Zplugin will grep
# operating system name and architecture automatically when there's no `bpick'

zplugin ice from"gh-r" as"program" mv"docker* -> docker-compose" bpick"*linux*"; zplugin load docker/compose

# Scripts that are built at install (there's single default make target, "install",
# and it constructs scripts by `cat'ing a few files). The make"" ice could also be:
# `make"install PREFIX=$ZPFX"`, if "install" wouldn't be the only, default target

zplugin ice as"program" pick"$ZPFX/bin/git-*" make"PREFIX=$ZPFX"
zplugin light tj/git-extras

# Two regular plugins loaded in default way (no `zplugin ice ...` modifiers)

zplugin light zsh-users/zsh-autosuggestions
zplugin light zdharma/fast-syntax-highlighting

# Load the pure theme, with zsh-async library that's bundled with it
# zplugin ice pick"async.zsh" src"pure.zsh"; zplugin light sindresorhus/pure

zplugin ice pick"async.zsh" src"pure.zsh"
zplugin light sindresorhus/pure

zplugin light mafredri/zsh-async
zplugin light thetic/extract
zplugin light srijanshetty/zsh-pip-completion
zplugin light MichaelAquilina/zsh-you-should-use

source $HOME/.aliases
