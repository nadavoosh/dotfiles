# install git bash support
curl -L https://raw.github.com/git/git/master/contrib/completion/git-prompt.sh > $DOTFILES_DIR/git/git-prompt.sh
# create global .gitignore file
git config --global core.excludesfile ~/.gitignore_global