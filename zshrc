### Added by Zinit's installer
if [[ ! -f $HOME/.zinit/bin/zinit.zsh ]]; then
    print -P "%F{33}▓▒░ %F{220}Installing DHARMA Initiative Plugin Manager (zdharma/zinit)…%f"
    command mkdir -p "$HOME/.zinit" && command chmod g-rwX "$HOME/.zinit"
    command git clone https://github.com/zdharma/zinit "$HOME/.zinit/bin" && \
        print -P "%F{33}▓▒░ %F{34}Installation successful.%f%b" || \
        print -P "%F{160}▓▒░ The clone has failed.%f%b"
fi

source "$HOME/.zinit/bin/zinit.zsh"
autoload -Uz _zinit
(( ${+_comps} )) && _comps[zinit]=_zinit

# Load a few important annexes, without Turbo
# (this is currently required for annexes)
zinit light-mode for \
    zinit-zsh/z-a-patch-dl \
    zinit-zsh/z-a-as-monitor \
    zinit-zsh/z-a-bin-gem-node

### End of Zinit's installer chunk

source $HOME/.zprofile
source $HOME/.aliases
source $HOME/.functions

##############################
#
# PLUGINS                 
#
##############################


zinit ice wait'0' lucid
zinit light thetic/extract

zinit ice wait'0' blockf lucid
zinit light zsh-users/zsh-completions

zinit ice wait'0' atload"_zsh_autosuggest_start" lucid
zinit light zsh-users/zsh-autosuggestions

zinit ice wait'0' lucid
zinit light zdharma/history-search-multi-word


##############################
#
# THEME                  
#
##############################


zinit ice pick"async.zsh" src"pure.zsh" lucid
zinit light sindresorhus/pure


##############################
#
# OMZ - LIBS              
#
##############################


setopt promptsubst

zinit ice wait'0' lucid
zinit snippet OMZ::lib/history.zsh

zinit ice wait'0' lucid
zinit snippet OMZ::lib/completion.zsh

zinit ice wait'0' lucid
zinit snippet OMZ::lib/key-bindings.zsh

zinit ice wait'0' lucid
zinit snippet OMZ::lib/functions.zsh

zinit ice wait'0' lucid
zinit snippet OMZ::lib/correction.zsh


##############################
#
# OMZ - PLUGINS           
#
##############################


zinit ice wait'0' lucid
zinit snippet OMZ::plugins/colored-man-pages/colored-man-pages.plugin.zsh

zinit ice wait'0' lucid
zinit snippet OMZ::plugins/history/history.plugin.zsh


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

zinit ice wait'0' lucid
zinit light zsh-users/zsh-history-substring-search

zinit ice wait'0' atinit"zpcompinit; zpcdreplay" lucid
zinit light zdharma/fast-syntax-highlighting


