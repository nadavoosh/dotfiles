# install git bash support
curl -L https://raw.github.com/git/git/master/contrib/completion/git-prompt.sh > $DOTFILES_DIR/git/git-prompt.sh
# update global configs
git config --global core.excludesfile ~/.gitignore_global
git config --global user.name "Nadav Recca"
git config --global user.email nadav@blend.com
