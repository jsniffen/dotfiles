set nocompatible
filetype off

set rtp+=$HOME/.vim/bundle/Vundle.vim

call plug#begin()

" colorschemes
Plug 'chriskempson/base16-vim'
" Plug 'mhartington/oceanic-next'
" font
" Plug 'ryanoasis/vim-devicons'

" utilities
Plug 'ctrlpvim/ctrlp.vim' "fuzzy file finder
Plug 'scrooloose/nerdtree' "file-tree
Plug 'vim-airline/vim-airline' "status bar
Plug 'vim-airline/vim-airline-themes' "themes for vim air-line
Plug 'Raimondi/delimitMate' "automatic closing of quotes, parenthesis, brackets, etc.
Plug 'scrooloose/syntastic' "syntax checking for vim

call plug#end()

" colorscheme
set background=dark
set t_Co=256
set term=screen-256color
let base16colorspace=256
colorscheme base16-ocean

" tabs
set noexpandtab " insert tabs rather than spaces for <Tab>
set smarttab " tab respects 'tabstop', 'shiftwidth', and 'softtabstop'
set tabstop=4 " the visible width of tabs
set softtabstop=4 " edit as if the tabs are 4 characters wide
set shiftwidth=4 " number of spaces to use for indent and unindent
set shiftround " round indent to a multiple of 'shiftwidth'
set completeopt+=longest

" styling
set title "set terminal title
set number "show line numbers
set autoindent
set smartindent
set list
set listchars=tab:▸\ ,eol:¬

" plugins configurations
filetype plugin indent on

" font
set encoding=utf-8

" nerdtree
map <F2> :NERDTreeToggle<CR>
let g:NERDTreeQuitOnOpen=1
let g:NERDTreeShowHidden=1

" CtrlP
let g:ctrlp_dotfiles=1
let g:ctrlp_working_path_mode='ra'

" airline
set laststatus=2
set timeoutlen=50
let g:airline_theme='base16'
let g:airline_powerline_fonts=1
" let g:airline_left_sep=''
" let g:airline_right_sep=''
