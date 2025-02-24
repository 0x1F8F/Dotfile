if status is-interactive
    # Commands to run in interactive sessions can go here
end


function fish_greeting
    # greet
end

fish_vi_key_bindings

# eval $(ssh-agent -c) > /dev/null
# ssh-add /Users/RootCl/.ssh/gh 2> /dev/null
alias ls "lsd --group-directories-first"

alias ip "ip -c"

alias vi nvim
alias vim nvim

alias less "less -Q --use-color"
alias man "man -P 'less -Q'"
alias bat "bat --theme='Catppuccin Mocha' -pn"

alias pib "pip install --break-system-packages"

# alias code " vscodium --enable-features=UseOzonePlatform,WaylandWindowDecorations --ozone-platform=wayland --unity-launch"
source (/usr/bin/starship init fish --print-full-init | psub)

zoxide init fish | source


# set --export WINEPREFIX "$HOME/.wine setup_vkd3d_proton install"
