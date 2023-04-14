#!/bin/sh

echo "Setting up your Mac..."

# Check for Oh My Zsh and install if we don't have it
if test ! $(which omz); then
  /bin/sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/HEAD/tools/install.sh)"
fi

# Check for Homebrew and install if we don't have it
if test ! $(which brew); then
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

  echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> $HOME/.zprofile
  eval "$(/opt/homebrew/bin/brew shellenv)"
fi

# Update Homebrew recipes
brew update

# Install all our dependencies with bundle (See Brewfile)
brew tap homebrew/cask
brew tap homebrew/bundle
brew bundle --file ./Brewfile

# Golang
go install golang.org/x/tools/cmd/godoc@latest

if [[ $(uname -m) == 'arm64' ]]; then
  sudo softwareupdate --install-rosetta --agree-to-license
fi

# Cocoapods
echo "Installing cocoapods"
sudo gem install activesupport
sudo gem install cocoapods
