#!/bin/bash

echo "Install Homebrew (https://brew.sh/)"
brew -v || /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

echo "Install php 7.3"
brew ls --versions php@7.3 || brew install php@7.3

echo "Install php 7.4"
brew ls --versions php@7.4 || brew install php@7.4

echo "Install Neovim (https://neovim.io/)"
brew ls --versions neovim || brew install neovim

echo "Install composer (https://getcomposer.org/)"
brew ls --versions composer || brew install composer

echo "Install nvm"
brew ls --versions nvm || brew install nvm
mkdir ~/.nvm
