call plug#begin('~/.vim/plugged')

Plug 'morhetz/gruvbox'
Plug 'srcery-colors/srcery-vim'
Plug 'preservim/nerdtree'
Plug 'idanarye/vim-vebugger'
Plug 'itchyny/lightline.vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'terryma/vim-multiple-cursors'
Plug 'ap/vim-css-color'

call plug#end()

syntax on
colorscheme gruvbox
set number
set relativenumber 
inoremap jj <Esc>
set bg=dark
set tabstop=4
set shiftwidth=4
set expandtab

let &t_SI = "\e[6 q"
let &t_EI = "\e[2 q"

