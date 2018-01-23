#!/usr/bin/env bash
# Specify the preferences directory
defaults write com.googlecode.iterm2.plist PrefsCustomFolder $DOTFILES_DIR/iterm2
# Tell iTerm2 to use the custom preferences in the directory
defaults write com.googlecode.iterm2.plist LoadPrefsFromCustomFolder -bool true