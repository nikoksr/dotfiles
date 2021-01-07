# ~/.config/fish/aliases.fish

##############################
#
# UPDATES
#
##############################

# refresh pacman mirrors
alias refresh_mirrors 'sudo reflector -p https --ipv4 --latest 5 --sort rate --save /etc/pacman.d/mirrorlist && sudo pacman -Syy'

# update zplugin
alias updzsh 'zinit self-update;zinit update --all;zinit compile --all;zinit cclear'

# update npm
alias updnpm 'npm -g update npm-check-updates;ncu -g -u;npm -g update'

# update vim-plug
alias updvim 'nvim +PlugUpgrade +qall > /dev/null; nvim +PlugUpdate +qall > /dev/null'

# update firmware
alias updfw 'fwupdmgr get-devices; fwupdmgr refresh; fwupdmgr get-updates; fwupdmgr update'

# update all
alias updall 'paru; updnpm; updvim; updfw'

# clean packages
alias clean-packages "paru -Runs '(paru -Qtdq)'"

##############################
#
# DEVELOPMENT
#
##############################

# CMake Debug
alias cmake-debug 'cmake -DCMAKE_BUILD_TYPE=Debug '

# CMake Release
alias cmake-release 'cmake -DCMAKE_BUILD_TYPE=Release '

# Make multicore
alias make 'make -j6'

# Cppcheck all warnings and suppress include warnings
alias cppcheck 'cppcheck --enable=all --suppress=missingIncludeSystem'

# Install and upgrade pip package as user
alias piuu 'pip install --user --upgrade '

##############################
#
# SYSTEM
#
##############################

# nvim to vim
alias v 'nvim'
alias vim 'nvim'

# grep
alias grep 'grep --color=auto'

# diff
alias diff 'diff --color=auto'

# cp
alias cpr 'rsync --size-only --inplace --human-readable --progress'

# mv
alias mvr 'rsync --size-only --inplace --human-readable --progress --remove-source-files'

# ls
alias ls 'lsd -lh --group-dirs=first'

# ls recursive
alias lsr 'lsd --tree --group-dirs=first'

# Find alternative
alias fd 'fd -j 6 -H -c auto -E /home/niko/mnt -E mnt'

