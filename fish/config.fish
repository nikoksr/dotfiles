# ~/.config/fish/config.fish

# Set env vars
if status is-login
    . ~/.config/fish/env.fish
end

if status is-interactive
    # Set cd path
    set CDPATH . ~/dev/github/personal ~/dev/github/org/deploi

    # Import colorscheme from 'wal' asynchronously
    cat ~/.cache/wal/sequences &
end

# Set aliases if they exist
if test -e ~/.config/fish/aliases.fish
    . ~/.config/fish/aliases.fish
end

# Set secrets if they exist
if test -e ~/.config/fish/secrets.fish
    . ~/.config/fish/secrets.fish
end

# Disable fish greeter
set -U fish_greeting

# Init starship prompt
starship init fish | source

