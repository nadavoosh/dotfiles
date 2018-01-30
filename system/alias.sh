alias ..="cd .."

function reload {
    if [ -n "$ZSH_VERSION" ]; then
       # assume Zsh
       source ~/.zlogin
    elif [ -n "$BASH_VERSION" ]; then
       # assume Bash
       source ~/.bash_profile
    fi
}
function title {
    if [ -n "$ZSH_VERSION" ]; then
       # assume Zsh
       echo -ne "\e]1;"$*"\a"
    elif [ -n "$BASH_VERSION" ]; then
       # assume Bash
       echo -ne "\033]1;"$*"\007"
    fi
}

alias dotfiles="cd ~/.dotfiles"
