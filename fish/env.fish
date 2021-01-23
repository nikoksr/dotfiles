# ~/.config/fish/env.fish

# Go path
set -x GOPATH $HOME/dev/go

# Path
set -gx PATH $PATH /bin
set -gx PATH $PATH /sbin
set -gx PATH $PATH /usr/bin
set -gx PATH $PATH /usr/sbin
set -gx PATH $PATH ~/.local/bin
set -gx PATH $PATH /usr/local/sbin
set -gx PATH $PATH /usr/local/bin
set -gx PATH $PATH $GOPATH/bin
set -gx PATH $PATH $HOME/.scripts
set -gx PATH $PATH $HOME/.yarn/bin

# Set locale
set -gx LC_ALL en_US.UTF-8
set -gx LANG en_US.UTF-8
set -gx LANGUAGE en_US.UTF-8

# Set shell for convenienve
set -gx SHELL /usr/bin/fish

# Set editor
set -gx EDITOR nvim
set -gx VISUAL nvim

# Set term
# set -gx TERM xterm-256color

# Sway specific vars
if test -n "$SWAYSOCK"
    set -gx QT_QPA_PLATFORMTHEME qt5ct
    set -gx _JAVA_AWT_WM_NONREPARENTING 1
end

# Gpg
set -gx GPG_TTY '(tty)'

