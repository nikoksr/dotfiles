### Added by Zplugin's installer
source '/home/niko/.zplugin/bin/zplugin.zsh'
autoload -Uz _zplugin
(( ${+_comps} )) && _comps[zplugin]=_zplugin
### End of Zplugin's installer chunk

zplugin ice wait'0' lucid
zplugin light thetic/extract

zplugin ice wait'0' lucid
zplugin light MichaelAquilina/zsh-you-should-use

zplugin ice wait'0' blockf lucid
zplugin light zsh-users/zsh-completions

zplugin ice wait'0' atload"_zsh_autosuggest_start" lucid
zplugin light zsh-users/zsh-autosuggestions

zplugin ice wait'0' lucid
zplugin light zdharma/history-search-multi-word

#zplugin ice wait'0' as"program" mv"wd.sh -> wd" pick"wd" lucid
#zplugin light mfaerevaag/wd

# theme
zplugin ice pick"async.zsh" src"pure.zsh" lucid
zplugin light sindresorhus/pure

# oh-my-zsh
# libs
zplugin ice wait'0' lucid
zplugin snippet OMZ::lib/git.zsh

zplugin ice wait'0' lucid
zplugin snippet OMZ::lib/history.zsh

zplugin ice wait'0' lucid
zplugin snippet OMZ::lib/completion.zsh

zplugin ice wait'0' lucid
zplugin snippet OMZ::lib/key-bindings.zsh

zplugin ice wait'0' lucid
zplugin snippet OMZ::lib/functions.zsh

zplugin ice wait'0' lucid
zplugin snippet OMZ::lib/correction.zsh

setopt promptsubst

# plugins
zplugin ice wait'0' atload"unalias grv" lucid
zplugin snippet OMZ::plugins/git/git.plugin.zsh

zplugin ice wait'0' lucid
zplugin snippet OMZ::plugins/pip/pip.plugin.zsh

zplugin ice wait'0' lucid
zplugin snippet OMZ::plugins/web-search/web-search.plugin.zsh

zplugin ice wait'0' lucid
zplugin snippet OMZ::plugins/taskwarrior/taskwarrior.plugin.zsh

zplugin ice wait'0' lucid
zplugin snippet OMZ::plugins/colored-man-pages/colored-man-pages.plugin.zsh

zplugin ice wait'0' lucid
zplugin snippet OMZ::plugins/cp/cp.plugin.zsh

zplugin ice wait'0' lucid
zplugin snippet OMZ::plugins/history/history.plugin.zsh

zplugin ice wait'0' lucid
zplugin snippet OMZ::plugins/dirpersist/dirpersist.plugin.zsh

#zplugin ice wait'0' lucid
#zplugin snippet OMZ::plugins/wd/wd.plugin.zsh

# needs to be loaded last
bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down

zle -N history-substring-search-up
zle -N history-substring-search-down

zplugin ice wait'0' lucid
zplugin light zsh-users/zsh-history-substring-search

zplugin ice wait'0' atinit"zpcompinit; zpcdreplay" lucid
zplugin light zdharma/fast-syntax-highlighting

source $HOME/.aliases
