syntax on
set number

if &compatible
    set nocompatible
endif

" Add the dein installation directory into runtimepath

" Plugin loading in dein
source $HOME/.dotfiles/nvim/configs/plugins.vim

" Plugin configuration
source $HOME/.dotfiles/nvim/configs/gruvbox.vim
source $HOME/.dotfiles/nvim/configs/codestats.vim
source $HOME/.dotfiles/nvim/configs/airline.vim

filetype plugin indent on
" show existing tab with 4 spaces width
set tabstop=4
" when indenting with '>', use 4 spaces width
set shiftwidth=4
" On pressing tab, insert 4 spaces
set expandtab
let NERDTreeShowHidden=1
let g:deoplete#enable_at_startup = 1
autocmd StdinReadPre * let s:std_in=5
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
