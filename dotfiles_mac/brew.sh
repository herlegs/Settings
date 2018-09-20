#!/usr/bin/env bash

# This script installs command-line tools using Homebrew and desktop applications using Homebrew-Cask.
# Manually run "source ./brew.sh" to install.

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade

# Install
brew install bash-completion
brew install curl
brew install gcc
brew install git
brew install go
brew install redis
brew install mercurial
# brew install node
# brew install ocaml
# brew install octave
# brew install opam
# brew install opencv
#brew install openssl
brew install tree
brew install wget
#brew install z # z - jump around
brew install zsh
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
brew install autojump
brew install jq

# Cask
brew tap caskroom/cask
brew tap caskroom/versions
# brew cask install android-studio
# brew cask install docker
brew cask install google-chrome
# brew cask install intellij-idea-ce
brew cask install iterm2
brew cask install java
# brew cask install macdown
# brew cask install mactex
brew cask install sublime-text
# brew cask install skype
# brew cask install sourcetree
# brew cask install virtualbox

# Remove outdated versions from the cellar.
brew cleanup
