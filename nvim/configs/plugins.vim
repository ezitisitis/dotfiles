" Add the `dein` installation directory into runtimepath
set runtimepath+=~/.dotfiles/nvim/dein/repos/github.com/Shougo/dein.vim

" `dein` loading
if dein#load_state('~/.dotfiles/nvim/dein')
    call dein#begin('~/.dotfiles/nvim/dein')

    call dein#add('~/.dotfiles/nvim/dein/repos/github.com/Shougo/dein.vim')
    " call dein#add('Shougo/deoplete.nvim')
    call dein#add('wsdjeg/dein-ui.vim')
    call dein#add('https://gitlab.com/code-stats/code-stats-vim.git')
    call dein#add('vim-airline/vim-airline')
    call dein#add('preservim/nerdtree')
    call dein#add('morhetz/gruvbox')
    call dein#add('neoclide/coc.nvim', { 'merged': 0, 'rev':  'release' })
    call dein#add('liuchengxu/vim-which-key')
    call dein#add('leafOfTree/vim-vue-plugin')

    call dein#end()
    call dein#save_state()
endif

filetype plugin indent on
syntax enable

if dein#check_install()
    au VimEnter * DeinUpdate
    call dein#install()
endif
