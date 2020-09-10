#!/bin/bash

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

brew ls --versions php@7.3 || brew install php@7.3
brew ls --versions php@7.4 || brew install php@7.4
brew ls --versions neovim || brew install neovim
brew ls --versions mysql@5.7 || brew install mysql@5.7
