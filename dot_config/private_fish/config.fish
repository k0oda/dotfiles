#                   __ _          __ _     _
#                  / _(_)        / _(_)   | |
#   ___ ___  _ __ | |_ _  __ _  | |_ _ ___| |__
#  / __/ _ \| '_ \|  _| |/ _` | |  _| / __| '_ \
# | (_| (_) | | | | | | | (_| |_| | | \__ \ | | |
#  \___\___/|_| |_|_| |_|\__, (_)_| |_|___/_| |_|
#                         __/ |
#                        |___/

if status is-interactive

    # -----------------------------------------------------
    # ENV
    # -----------------------------------------------------

    # -----------------------------------------------------
    # Utils integration
    # -----------------------------------------------------

    if type -q fzf
        fzf --fish | source
    end

    if type -q starship
        starship init fish | source
    end

    # -----------------------------------------------------
    # Aliases
    # -----------------------------------------------------

    # ls -> eza
    if type -q eza
        alias ls="eza --icons always"
        alias lsa="ls -a"
        alias l="ls"
        alias la="lsa"
        alias ll="ls -lh"
        alias lla="ll -a"
        alias lt="ls -T --level=2"
        alias lta="lt -a"
    end

    # cat -> bat
    if type -q bat
        alias cat="bat"
    end

    # Core utils
    alias diff="diff --color=auto"
    alias df="df -h"

end
