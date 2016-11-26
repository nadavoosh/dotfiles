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

# install git bash support
curl -L https://raw.github.com/git/git/master/contrib/completion/git-prompt.sh > ~/.git-prompt.sh

# bash
echo "Setting up bash..."
ln -sfv "$DOTFILES_DIR/runcom/bash_profile" ~/.bash_profile
ln -sfv "$DOTFILES_DIR/runcom/bashrc" ~/.bashrc
ln -sfv "$DOTFILES_DIR/runcom/bash_alias" ~/.bash_alias
ln -sfv "$DOTFILES_DIR/runcom/bashrc.virtualenvwrapper" ~/.bashrc.virtualenvwrapper
ln -sfv "$DOTFILES_DIR/runcom/prompt" ~/.prompt

# vim
echo "Setting up vim..."
ln -sfv "$DOTFILES_DIR/vimrc" ~/.vimrc

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

