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
alias pep8="autopep8 --in-place --aggressive --aggressive"
alias pgrestart="pg_ctl -D /usr/local/var/postgres -l /usr/local/var/postgres/server.log restart"
alias pals="cd ~/go/src/github.com/nadavoosh/go_crypto_pals"
alias yama="cd ~/go/src/git.blendlabs.com/blend/yama"
alias csp="cd ~/go/src/git.blendlabs.com/blend/csp-violations"
