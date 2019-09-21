# ~/.zshrc


source $HOME/.zplugin/bin/zplugin.zsh
autoload -Uz _zplugin
(( ${+_comps} )) && _comps[zplugin]=_zplugin


##############################
#
# ENVIRONMENT             
#
##############################


source $HOME/.zprofile
source $HOME/.aliases
source $HOME/.functions

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

if [[ $TERM == xterm-termite ]]; then
    . /etc/profile.d/vte.sh
    __vte_osc7
fi


##############################
#
# PLUGINS                 
#
##############################


zplugin ice wait'0' lucid
zplugin light thetic/extract

zplugin ice wait'0' blockf lucid
zplugin light zsh-users/zsh-completions

zplugin ice wait'0' atload"_zsh_autosuggest_start" lucid
zplugin light zsh-users/zsh-autosuggestions

zplugin ice wait'0' lucid
zplugin light zdharma/history-search-multi-word


##############################
#
# THEME                  
#
##############################


zplugin ice pick"async.zsh" src"pure.zsh" lucid
zplugin light sindresorhus/pure


##############################
#
# OMZ - LIBS              
#
##############################


setopt promptsubst

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


##############################
#
# OMZ - PLUGINS           
#
##############################


zplugin ice wait'0' lucid
zplugin snippet OMZ::plugins/colored-man-pages/colored-man-pages.plugin.zsh

zplugin ice wait'0' lucid
zplugin snippet OMZ::plugins/history/history.plugin.zsh


##############################
#
# TEXT SEARCH             
# NEEDS TO BE LOADED LAST 
#
##############################


bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down

zle -N history-substring-search-up
zle -N history-substring-search-down

zplugin ice wait'0' lucid
zplugin light zsh-users/zsh-history-substring-search

zplugin ice wait'0' atinit"zpcompinit; zpcdreplay" lucid
zplugin light zdharma/fast-syntax-highlighting


