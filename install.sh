#!/usr/bin/env bash

# Get current dir (so run this script from anywhere)

export DOTFILES_DIR EXTRA_DIR
DOTFILES_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
EXTRA_DIR="$HOME/.extra"

# Update dotfiles itself first
if [ ! -e $DOTFILES_DIR/.git ]; then
  echo "Cloning dotfiles"
  git clone https://github.com/nadavoosh/dotfiles.git $DOTFILES_DIR
else
  echo "Updating dotfiles"
[ -d "$DOTFILES_DIR/.git" ] && git --work-tree="$DOTFILES_DIR" --git-dir="$DOTFILES_DIR/.git" pull origin master
fi

# install homebrew deps
. Brewfile

# install all installers
for src in $(find -H "$DOTFILES_DIR" -depth 2 -name 'install.sh')
do
  echo "Installing $src"
  . "$src"
done

# set up symlinks
echo "Setting up symlinks..."
for src in $(find -H "$DOTFILES_DIR" -maxdepth 2 -name '*.symlink' -not -path '*.git*')
do 
  dst="$HOME/.$(basename "${src%.*}")"
  ln -sfv "$src" "$dst"
done

export VUNDLE_PATH="$HOME/.vim/bundle/Vundle.vim"
if [ ! -e $VUNDLE_PATH ]; then
  echo "Cloning vundle"
  git clone https://github.com/VundleVim/Vundle.vim.git $VUNDLE_PATH
fi 

export VIM_SOLARIZED_PATH="$HOME/.vim/bundle/vim-colors-solarized"
if [ ! -e $VIM_SOLARIZED_PATH ]; then
  echo "Cloning vim solarized"
  git clone git://github.com/altercation/vim-colors-solarized.git $VIM_SOLARIZED_PATH
fi 

