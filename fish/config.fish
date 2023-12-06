if status is-interactive
    # Commands to run in interactive sessions can go here
end


function fish_greeting
    # greet
end

alias vi nvim
alias vim nvim
alias code " vscodium --enable-features=UseOzonePlatform,WaylandWindowDecorations --ozone-platform=wayland --unity-launch"
source (/usr/bin/starship init fish --print-full-init | psub)


# bun
set --export BUN_INSTALL "$HOME/.bun"
set --export PATH $BUN_INSTALL/bin $PATH
