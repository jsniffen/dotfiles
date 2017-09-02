" enable filetype detection
filetype on

" line numbers
set relativenumber
set number

" leaders
let mapleader = ","
let maplocalleader = "\\"

" remap normal mode
inoremap jk <esc>
inoremap <esc> <nop>

" move lines up and down
nnoremap <leader>- ddp
nnoremap <leader>_ ddk<s-p>

" capitalize the previous word
inoremap <leader><c-u> <esc>vawU<s-a>

" edit vimrc in a split
nnoremap <leader>ev :vsplit $MYVIMRC<cr>

" source vimrc
nnoremap <leader>sv :source $MYVIMRC<cr>

" surround with quotes
nnoremap <leader>" viw<esc>a"<esc>bi"<esc>lel
nnoremap <leader>' viw<esc>a'<esc>bi'<esc>lel

" surround visual selection with quotes
vnoremap <leader>" <esc>`<i"<esc>`>la"
vnoremap <leader>' <esc>`<i'<esc>`>la'
