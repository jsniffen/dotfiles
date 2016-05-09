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
" Plug 'Yggdroot/indentLine'

call plug#end()

" colorscheme
set background=dark
set t_Co=256
set term=screen-256color
let base16colorspace=256
colorscheme base16-ocean

" tabs
" use 4 spaces for tabs
set tabstop=4 softtabstop=4 shiftwidth=4
" display indentation guides
" set list listchars=tab:❘-,trail:·,extends:»,precedes:«,nbsp:×
set list listchars=tab:▸\ ,eol:¬,trail:·,extends:>,precedes:<,nbsp:x
" convert spaces to tabs when reading file
autocmd! bufreadpost * set noexpandtab | retab! 4
" convert tabs to spaces before writing file
autocmd! bufwritepre * set expandtab | retab! 4
" convert spaces to tabs after writing file (to show guides again)
autocmd! bufwritepost * set noexpandtab | retab!


" set smarttab " tab respects 'tabstop', 'shiftwidth', and 'softtabstop'
" set tabstop=4 " the visible width of tabs
" set softtabstop=4 " edit as if the tabs are 4 characters wide
" set shiftwidth=4 " number of spaces to use for indent and unindent
" set shiftround " round indent to a multiple of 'shiftwidth'
" let g:indentLine_char = '▸'
" let g:indentLine_color_term = 8
" set completeopt+=longest

" styling
set title "set terminal title
set number "show line numbers
set autoindent
set smartindent
" set invlist
" highlight SpecialKey ctermbg=none

" plugins configurations
filetype plugin indent on

" font
set encoding=utf-8

" nerdtree
map <F2> :NERDTreeToggle<CR>
let g:NERDTreeQuitOnOpen=1
let g:NERDTreeShowHidden=1

" CtrlP
let g:ctrlp_custom_ignore = '\v[\/](node_modules|target|dist)|(\.(swp|ico|git|svn))$'
let g:ctrlp_dotfiles=1
let g:ctrlp_working_path_mode='0'

" airline
set laststatus=2
set timeoutlen=50
let g:airline_theme='base16'
let g:airline_powerline_fonts=1
" let g:airline_left_sep=''
" let g:airline_right_sep=''
