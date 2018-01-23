#!/bin/bash

# Install command-line tools
xcode-select --install

# Make sure we’re using the latest Homebrew
brew update

# Upgrade any already-installed formulae
brew upgrade

brew install python3
brew tap caskroom/cask

# install casks
cask_args appdir: '/Applications'
brew cask install google-chrome
brew cask install 1password
brew cask install spotify
brew cask install fantastical
brew cask install iterm2
#brew cask install 'airmail'
#brew cask install 'bear'


# Remove outdated versions from the cellar
brew cask cleanup
brew cleanup
