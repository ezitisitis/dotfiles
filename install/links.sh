echo "Link .vimrc"

rm $HOME/.vimrc
ln -s $HOME/.dotfiles/shell/configs/.vimrc $HOME/.vimrc

echo "Link .zshrc"
rm $HOME/.zshrc
ln -s $HOME/.dotfiles/shell/configs/.zshrc $HOME/.zshrc
