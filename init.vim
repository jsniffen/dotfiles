" source init.vim on save
augroup reload_vimrc " {
  autocmd!
  autocmd BufWritePost $MYVIMRC source $MYVIMRC
augroup END " }

" get rid of esc lag
set timeoutlen=1000 ttimeoutlen=0

" show relative line numbers
set relativenumber
set number

set autoread " autoread changed files

" syntax highlighting on
syntax on

" not compatible with vi
set nocompatible

" you can copy and paste yanked lines outside of vim
set clipboard+=unnamedplus

" different cursors based on vim mode
set termguicolors

" smart indenting
set autoindent
set smartindent

" Use spaces instead of tabs
set expandtab

" Be smart when using tabs ;)
set smarttab

" 1 tab == 4 spaces
set shiftwidth=2
set tabstop=2


" change default backupdir
set backupdir=~/.vim-tmp
set directory=~/.vim-tmp//

" intelligent searching
set ignorecase
set smartcase
set hlsearch
set incsearch
set nolazyredraw

" show invisible characters
set list
set listchars=tab:→\ ,eol:¬,trail:⋅,extends:❯,precedes:❮
set showbreak=↪

" set leader key
let mapleader = ','

" plugins
call plug#begin('~/.config/nvim/plugged')

" themes and style
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'lifepillar/vim-solarized8'

" tools
Plug 'tpope/vim-fugitive' " git plugin
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug '/usr/local/opt/fzf' | Plug 'junegunn/fzf.vim' "fuzzy file finder
Plug 'tomtom/tcomment_vim'

" syntax
Plug 'sheerun/vim-polyglot' " syntax for all languages, loaded intelligently

" features
Plug 'tpope/vim-surround' " can change surrounding characters
Plug 'tpope/vim-repeat' " . works with plugins
Plug 'tpope/vim-sleuth' " autodetect indent
Plug 'jiangmiao/auto-pairs' " auto close parens, etc.
Plug 'christoomey/vim-tmux-navigator' " seamless navigation between tmux and vim

call plug#end()

" theme
set background=dark
color solarized8_dark

" polyglot
let g:jsx_ext_required = 1 " .js files uses javascript syntax instead of jsx

" vim-tmux-navigator
nnoremap <silent> <BS> :TmuxNavigateLeft<cr>

" fzf
set hidden " you can open files in new buffers
nnoremap <c-u> :Lines<CR>
nnoremap <c-o> :Buffers<CR>
nnoremap <c-p> :Files<cr>
command! -bang -nargs=? -complete=dir Files
  \ call fzf#vim#files(<q-args>, fzf#vim#with_preview(), <bang>0)
highlight fzf1 gui=bold guifg=#5c6370 guibg=#2c323c
highlight fzf2 gui=bold guifg=#5c6370 guibg=#2c323c
highlight fzf3 gui=bold guifg=#5c6370 guibg=#2c323c
let g:fzf_colors =
\ { 'fg':      ['fg', 'Normal'],
  \ 'bg':      ['bg', 'Normal'],
  \ 'hl':      ['fg', 'Comment'],
  \ 'fg+':     ['fg', 'Normal', 'Normal', 'Normal'],
  \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
  \ 'hl+':     ['fg', 'Statement'],
  \ 'info':    ['fg', 'PreProc'],
  \ 'prompt':  ['fg', 'Conditional'],
  \ 'pointer': ['fg', 'Exception'],
  \ 'marker':  ['fg', 'Keyword'],
  \ 'spinner': ['fg', 'Label'],
   \ 'header':  ['fg', 'Comment'] }


" NERDTree
let NERDTreeShowHidden=1
let NERDTreeDirArrowExpandable = '▷'
let NERDTreeDirArrowCollapsible = '▼'
let NERDTreeHijackNetrw=1

" vim airline
let g:airline_left_sep=''
let g:airline_right_sep=''
let g:airline_powerline_fonts = 1
let g:airline_skip_empty_sections = 1 " don't show arrow when no error
let g:webdevicons_enable_airline_statusline = 1

" comments and html attrs are in italics
highlight Comment gui=italic
highlight htmlArg gui=italic
