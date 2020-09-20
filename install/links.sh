echo "Link init.vim (neovim config)"
rm $HOME/.config/nvim/init.vim
ln -s $HOME/.dotfiles/shell/configs/init.vim $HOME/.config/nvim/init.vim

echo "Link .zshrc"
rm $HOME/.zshrc
ln -s $HOME/.dotfiles/shell/configs/.zshrc $HOME/.zshrc
