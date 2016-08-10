set nocompatible
filetype off
filetype plugin indent on

set rtp+=$HOME/.vim/bundle/Vundle.vim

" auto reload files
autocmd bufwritepost .vimrc source ~/.vimrc

" disable swapfiles
set noswapfile
set nobackup
set nowb

" increase the history
set history=1000

" smarter searching
set ignorecase
set smartcase

" intuitive backspace
set backspace=indent,eol,start

" allow mouse selecting
set mouse=a

" styling
set title "set terminal title
set number "show line numbers
set encoding=utf-8
set nowrap "don't wrap lines

" indentation
set autoindent
set smartindent
set smarttab
set shiftwidth=4
set softtabstop=4
set tabstop=4
set expandtab

" plugins configurations
call plug#begin()

" colorschemes
Plug 'chriskempson/base16-vim'

" utilities
Plug 'ctrlpvim/ctrlp.vim' "fuzzy file finder
" Plug 'scrooloose/nerdtree' "file-tree
" Plug 'vim-airline/vim-airline' "status bar
" Plug 'vim-airline/vim-airline-themes' "themes for vim air-line
Plug 'Raimondi/delimitMate' "automatic closing of quotes, parenthesis, brackets, etc.
Plug 'scrooloose/syntastic' "syntax checking for vim
Plug 'Shougo/neocomplete.vim' "autocomplete
Plug 'ervandew/supertab' "use tab for autocomplete
" Plug 'terryma/vim-multiple-cursors' "multiple cursors

" Snippets
Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'tomtom/tlib_vim'
Plug 'garbas/vim-snipmate'
Plug 'honza/vim-snippets'

" tabs
" Plug 'tpope/vim-sleuth'

" language plugins
" Plug 'pangloss/vim-javascript'
Plug 'othree/javascript-libraries-syntax.vim'
Plug 'mattn/emmet-vim'
Plug 'othree/html5.vim'
Plug 'othree/yajs.vim'
Plug 'othree/es.next.syntax.vim'
Plug 'jelera/vim-javascript-syntax'
Plug 'burnettk/vim-angular'

call plug#end()

" rebindings

" colorscheme
set background=dark
set t_Co=256
set term=screen-256color
if filereadable(expand("~/.vimrc_background"))
    let base16colorspace=256
    source ~/.vimrc_background
endif

" nerdtree
" map <F2> :NERDTreeToggle<CR>
" let g:NERDTreeQuitOnOpen=1
" let g:NERDTreeShowHidden=1

" CtrlP
let g:ctrlp_custom_ignore = '\v[\/](node_modules|target|dist|build|vendor|docs)|(\.(swp|ico|git|svn))$'
let g:ctrlp_dotfiles=1
let g:ctrlp_working_path_mode='0'

" airline
" set laststatus=2
" set timeoutlen=1000 ttimeoutlen=0
" let g:airline_theme='base16'
" let g:airline_powerline_fonts=1
" let g:airline#extensions#tabline#enabled=1
" let g:airline#extensions#tabline#buffer_min_count=2

" javascript libraries syntax
" let g:used_javascript_libs = 'jquery,angularjs,angularui,angularuirouter'

" neocomplete
let g:neocomplete#enable_at_startup = 1
let g:neocomplete#enable_smart_case = 1
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
