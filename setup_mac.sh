#!/bin/bash

# Automatically register SSH keys with ssh-agent and store passphrases in Ketychain
echo 'eval "$(ssh-agent -s)"' >> $HOME/.bash_profile

# Install Homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Tap Homebrew Cask
brew install caskroom/cask/brew-cask

# Tab Jetbrains Homebrew repo
brew tap jetbrains/utils

# Install Odrive
brew cask install odrive

# Install proper GNU Utils to replace Mac versions
brew install coreutils findutils gnu-tar gnu-sed gawk gnutls gnu-indent gnu-getopt --with-default-names

# Install Java runtime
brew cask install java

#Install Go runtime
brew install go --cross-compile-common

# Setup Go runtime
mkdir $HOME/go
echo 'export GOPATH=$HOME/go' >> $HOME/.bash_profile
echo 'export PATH=$PATH:/usr/local/opt/go/libexec/bin' >> $HOME/.bash_profile

# Instal Node.js runtime
brew install node

# Install iTerm2 terminal replacement
brew cask install iterm2

# Install Atom
brew cask install atom

# Install Virtualbox and extensions
brew cask install virtualbox virtualbox-extension-pack

# Install Docker
brew cask install docker

# Install Jetbrains
brew cask install jetbrains-toolbox
open -a "/Applications/JetBrains Toolbox.app"

# Install Vagrant and Vagrant Manager toolbar control
brew cask install vagrant vagrant-manager

# Install Google Chrome browser
brew cask install google-chrome

# Install VLC media player
brew cask install vlc

# Install GOG Galaxy
brew cask install gog-galaxy

# Install Steam
brew cask isntall steam

# Install Tunnelblick
brew cask install tunnelblick

# Install Gitkraken
brew cask install gitkraken

# Install Pathfinder
brew cask install path-finder

#Install Private Internet Access
brew cask install private-internet-access
open -a "/usr/local/Caskroom/private-internet-access/81/Private Internet Access Installer.app"
