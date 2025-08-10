" No vi compatibility
set nocompatible

" Syntax highlighting
syntax enable
filetype plugin on

" Search down into subfolders
set path+=**

" Display matching files in menu
set wildmenu

" Tweaks for browsing
let g:netrw_banner=0
let g:netrw_browse_split=4
let g:netrw_altv=0
let g:netrw_liststyle=3
let g:netrw_list_hide=netrw_gitignore#Hide()
let g:netrw_list_hide.=',\(^\|\s\s\)\zs\.\S\+'

set number                     " Show current line number
set relativenumber             " Show relative line numbers
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set scrolloff=8
set mouse=a
set autoread

autocmd FocusGained,CursorHold * checktime

nnoremap <leader>e :Vexplore<CR>
nnoremap <leader>t :terminal<CR>
nnoremap <leader>vt :vert terminal<CR>
nnoremap <leader>o :only<CR>
nnoremap <C-Left> :tabprevious<CR>
nnoremap <C-Right> :tabnext<CR>
nnoremap <C-j> :tabprevious<CR>
nnoremap <C-k> :tabnext<CR>
