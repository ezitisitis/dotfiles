#!/bin/bash

echo "Install casks (iterm2, docker e.t.c.)"
brew ls iterm2 --versions --cask || brew install --cask iterm2
brew ls docker --versions --cask || brew install --cask docker
brew ls virtualbox --versions --cask || brew install --cask virtualbox
brew ls postman --versions --cask || brew install --cask postman
brew ls libreoffice --versions --cask || brew install --cask libreoffice
brew ls spotify --versions --cask || brew install --cask spotify
brew ls mactracker --versions --cask || brew install --cask mactracker
brew ls discord --versions --cask || brew install --cask discord
brew ls slack --versions --cask || brew install --cask slack
brew ls jetbrains-toolbox --versions --cask || brew install --cask jetbrains-toolbox
brew ls fork --versions --cask || brew install --cask fork
brew ls transmission --versions --cask || brew install --cask transmission
