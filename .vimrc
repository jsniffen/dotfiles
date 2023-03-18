set autoread
set noswapfile
color industry

let mapleader = ','

call plug#begin()

Plug 'kien/ctrlp.vim'
Plug 'christoomey/vim-tmux-navigator'

call plug#end()

let g:ctrlp_working_path_mode = 0
let g:ctrlp_custom_ignore = 'venv\|\.git\|__pycache__\|node_modules'

nnoremap <leader>sv :so $MYVIMRC<CR>
nnoremap <leader>ev :e $MYVIMRC<CR>
nnoremap <leader>rr :redraw!<CR>

syntax off
