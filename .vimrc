set nocompatible
filetype off

set rtp+=$HOME/.vim/bundle/Vundle.vim

call plug#begin()

" colorschemes
Plug 'chriskempson/base16-vim'

" utilities
Plug 'ctrlpvim/ctrlp.vim' "fuzzy file finder
Plug 'scrooloose/nerdtree' "file-tree
Plug 'vim-airline/vim-airline' "status bar
Plug 'vim-airline/vim-airline-themes' "themes for vim air-line
Plug 'Raimondi/delimitMate' "automatic closing of quotes, parenthesis, brackets, etc.
Plug 'scrooloose/syntastic' "syntax checking for vim

" tabs
Plug 'Yggdroot/indentLine'
Plug 'tpope/vim-sleuth'

call plug#end()

" colorscheme
set background=dark
set t_Co=256
set term=screen-256color
let base16colorspace=256
colorscheme base16-ocean

" tabs
let g:airline#extensions#whitespace#mixed_indent_algo = 1 " certain number of spaces are allowed after tabs, but not in between
let g:indentLine_color_term = 8
let g:indentLine_char = '▸'
let g:indentLine_first_char = '▸'
let g:indentLine_showFirstIndentLevel = 1  

" styling
set title "set terminal title
set number "show line numbers
set list
set listchars=eol:¬
set autoindent
set smartindent

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
