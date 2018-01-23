#!/bin/bash


xcode-select --install

# Install command-line tools using Homebrew

# Make sure we’re using the latest Homebrew
brew update

# Upgrade any already-installed formulae
brew upgrade

brew install python3
brew install iterm2

# Remove outdated versions from the cellar
brew cleanup
