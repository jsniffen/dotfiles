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
set clipboard=unnamed

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

" can retab easier
vmap <S-Tab> <gv
vmap <Tab> >gv

" delete without updating yank buffer
nnoremap <leader>d "_d
nnoremap <leader>d "_d

" plugins
call plug#begin('~/.config/nvim/plugged')

" themes and style
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'ryanoasis/vim-devicons'

" tools
Plug 'tpope/vim-fugitive' " git plugin
Plug 'ervandew/supertab' " load supertab before deoplete
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'mattn/emmet-vim'
Plug '/usr/local/opt/fzf' | Plug 'junegunn/fzf.vim' "fuzzy file finder
Plug 'tomtom/tcomment_vim'

" syntax
Plug 'neomake/neomake' " syntax highlighting
Plug 'sheerun/vim-polyglot' " syntax for all languages, loaded intelligently
Plug 'shougo/deoplete.nvim', { 'do': ':updateremoteplugins' } " autocomplete
Plug 'shougo/echodoc.vim' " display function signatures from completions in command line

" javascript
" Plug 'ternjs/tern_for_vim'
" Plug 'carlitux/deoplete-ternjs'

" features
Plug 'terryma/vim-multiple-cursors' " multiple cursors
Plug 'tpope/vim-surround' " can change surrounding characters
Plug 'tpope/vim-repeat' " . works with plugins
Plug 'tpope/vim-sleuth' " autodetect indent
Plug 'jiangmiao/auto-pairs' " auto close parens, etc.
Plug 'christoomey/vim-tmux-navigator' " seamless navigation between tmux and vim

Plug 'joshdick/onedark.vim'
Plug 'morhetz/gruvbox'

call plug#end()

" polyglot
let g:jsx_ext_required = 1 " .js files uses javascript syntax instead of jsx

set background=dark
color gruvbox

" supertab
let g:SuperTabDefaultCompletionType = "<c-n>" " tab goes in the sane direction

" vim-tmux-navigator
nnoremap <silent> <BS> :TmuxNavigateLeft<cr>

" Use deoplete.
let g:deoplete#enable_at_startup = 1
let g:echodoc_enable_at_startup = 1
set noshowmode
nmap <silent> <leader>po :set completeopt+=preview<CR>
nmap <silent> <leader>pc :set completeopt-=preview<CR>:pclose<CR>
set completeopt-=preview
set completeopt-=noinsert

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

" Use tern_for_vim.
let g:tern#command = ["tern"]
let g:tern#arguments = ["--persistent"]

" neomake
" autocmd! BufWritePost * Neomake " run neomake on file save
nmap <Leader><Space>o :lopen<CR> 
nmap <Leader><Space>c :lclose<CR>
nmap <Leader><Space>, :ll<CR>
nmap <Leader><Space>n :lnext<CR>
nmap <Leader><Space>p :lprev<CR>

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
