" set term=xterm-kitty
set nocompatible
filetype plugin on
syntax on
set hidden
set nobackup
set noswapfile
set backspace=2
set nowrap
set clipboard=unnamed
set autoread

set nohlsearch
set incsearch

set timeoutlen=1000 ttimeoutlen=0

set listchars=tab:→\ ,eol:¬,trail:⋅,extends:❯,precedes:❮
set showbreak=↪
set list

set tabstop=4
set softtabstop=0 
set noexpandtab
set shiftwidth=4
set smarttab

let mapleader=","
let maplocalleader="\\"

set grepprg=ag\ --nogroup\ --nocolor

call plug#begin('~/.vim/plugged')

" language server
Plug 'autozimu/LanguageClient-neovim', {
    \ 'branch': 'next',
    \ 'do': 'bash install.sh',
    \ }

" syntax
Plug 'sheerun/vim-polyglot'

" autocomplete
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }

" tools
Plug '/usr/local/opt/fzf' | Plug 'junegunn/fzf.vim' "fuzzy file finder
Plug 'airblade/vim-gitgutter'
Plug 'christoomey/vim-tmux-navigator'
" Plug 'editorconfig/editorconfig-vim'
Plug 'fatih/vim-go'
Plug 'justinmk/vim-dirvish'
Plug 'scrooloose/nerdtree'
Plug 'tomtom/tcomment_vim'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-sleuth'
Plug 'vimwiki/vimwiki'
Plug 'mattn/emmet-vim'
Plug 'itchyny/lightline.vim'

" Random
Plug 'captbaritone/better-indent-support-for-php-with-html'

" Themes
Plug 'nanotech/jellybeans.vim'
Plug 'lifepillar/vim-solarized8'
Plug 'morhetz/gruvbox'

call plug#end()

" deoplete
let g:deoplete#enable_at_startup = 1

let g:LanguageClient_autoStart = 1
let g:LanguageClient_serverCommands = {
    \ 'typescript': ['node', '~/node_modules/javascript-typescript-langserver/lib/language-server-stdio.js'],
    \ 'javascript': ['node', '~/node_modules/javascript-typescript-langserver/lib/language-server-stdio.js'],
    \ }

  autocmd FileType javascript setlocal omnifunc=LanguageClient#complete
  autocmd FileType typescript setlocal omnifunc=LanguageClient#complete

let g:go_fmt_command = "goimports"

" fzf config
nnoremap <leader>d :Buffers<CR>
nnoremap <leader>l :Lines<CR>
nnoremap <leader>f :GFiles<cr>

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

set background=dark
syntax on
let g:jsx_ext_required = 1 " .js files uses javascript syntax instead of jsx
set tgc
color gruvbox

let g:lightline = { 'colorscheme': 'gruvbox' }

" custom mappings
nnoremap <silent><leader>ev :e $MYVIMRC<CR>
nnoremap <silent><leader>sv :so $MYVIMRC<CR>

nnoremap <silent><leader>gs :!tig status<CR><CR>

nnoremap <silent><leader>nt :NERDTree<CR>
nnoremap <silent><leader>nf :NERDTreeFind<CR>

nnoremap <C-h> <C-w><
nnoremap <C-j> <C-w>-
nnoremap <C-k> <C-w>+
nnoremap <C-l> <C-w>>

tnoremap jk <C-\><C-n>
inoremap jk <Esc>

" custom commands
:command! WPtests :new | :silent r! vagrant ssh -c 'php /var/www/content/asym-src/App/app test'
:command! SLimport :new | :silent r! vagrant ssh -c 'php /var/www/content/asym-src/App/app ss:import --site $UEP_HOST/medstar-ortho-institute'
:command! WPmigrate :new | :silent r! vagrant ssh -c 'cd /var/www/content/plugins/msh-content-search-index/scripts/ && php 2017-10-05-migrate-acf-field-name.php -h $UEP_HOST/now -d 1900-01-01 -p all -s'
:command! WPservices :new | :silent r! vagrant ssh -c 'cd /var/www/content/plugins/msh-content-search-index/scripts/ && php 2017-10-10-reset-services.php -h $UEP_HOST/now -d 1900-01-01 -p all -s'
:command! WPsave :new | :silent r! vagrant ssh -c 'cd /var/www/content/plugins/msh-content-search-index/scripts/ && php every-post-refresh.php -h $UEP_HOST/now -d 1900-01-01 -p all -s'

hi comment cterm=italic
" hi normal guibg=NONE ctermbg=NONE
