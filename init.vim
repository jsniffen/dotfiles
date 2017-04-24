set relativenumber
set number
syntax on
set nocompatible

set clipboard=unnamed

let $NVIM_TUI_ENABLE_CURSOR_SHAPE=1

set autoindent              " automatically set indent of new line
set smartindent

set expandtab
set tabstop=2
set shiftwidth=2

" Searching
set ignorecase              " case insensitive searching
set smartcase               " case-sensitive if expresson contains a capital letter
set hlsearch                " highlight search results
set incsearch               " set incremental search, like modern browsers
set nolazyredraw            " don't redraw while executing macros

" toggle invisible characters
set list
set listchars=tab:→\ ,eol:¬,trail:⋅,extends:❯,precedes:❮
set showbreak=↪

call plug#begin('~/.config/nvim/plugged')

Plug 'scrooloose/syntastic'
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'chriskempson/base16-vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'jiangmiao/auto-pairs'

Plug 'terryma/vim-multiple-cursors'

Plug 'Valloric/YouCompleteMe'

Plug 'mattn/emmet-vim'

Plug 'ctrlpvim/ctrlp.vim'

Plug 'ryanoasis/vim-devicons'
call plug#end()

set t_Co=256
if filereadable(expand("~/.vimrc_background"))
  let base16colorspace=256
  source ~/.vimrc_background
endif


let NERDTreeShowHidden=1
let NERDTreeDirArrowExpandable = '▷'
let NERDTreeDirArrowCollapsible = '▼'

let g:airline_left_sep=''
let g:airline_right_sep=''
let g:airline_powerline_fonts = 1
let g:airline_theme='base16'

let g:webdevicons_enable_ctrlp = 1
let g:webdevicons_enable_airline_statusline = 1

highlight Comment cterm=italic

