alias ..="cd .."
alias reload="source ~/.bash_profile"
alias devvpn="sudo /usr/local/Cellar/openvpn/2.3.7/sbin/openvpn ~/Downloads/devclient.ovpn"
function title {
    echo -ne "\033]0;"$*"\007"
}
alias dotfiles="cd ~/.dotfiles"
