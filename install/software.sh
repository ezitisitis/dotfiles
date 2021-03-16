#!/bin/bash

echo "Install casks (iterm2, docker e.t.c.)"

casks=(
  iterm2
  docker
  virtualbox
  postman
  libreoffice
  spotify
  sketch
  mactracker
  discord
  slack
  jetbrains-toolbox
  fork
  transmission
)

for cask in  "${casks[@]}"
do
  echo "LOL KEK"
  brew ls $cask --versions --cask
done
