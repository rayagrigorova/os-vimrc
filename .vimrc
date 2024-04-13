syntax on
filetype plugin on
filetype indent on 

colo pablo
set guifont=Consolas:h16:cANSI
set incsearch
set termguicolors

" Use persistent undo (after the file is closed undo can be applied)
set undofile
set undodir=~/.vim/undo//

" nnoremap o o<Esc>0"_D
" nnoremap O O<Esc>0"_D

nnoremap Y y$
nnoremap j gj
nnoremap k gk

nnoremap <silent> J 5gj
nnoremap <silent> K 5gk
xnoremap <silent> J 5gj
xnoremap <silent> K 5gk

nnoremap ! :source %<cr>

set cursorline 
set showmatch

" A mapping to surround a variable (doesn't work if the variable is one symbol)
nnoremap <leader>v Bi"${<Esc>Ea}"<Esc>

" A mapping to surround a variable in just {} (doesn't work if the variable is one symbol)
nnoremap <leader>V Bi${<Esc>Ea}<Esc>

" The following mappings work for surrounding small variables 
nnoremap <leader>sv i"${<Esc>Ea}"<Esc>
nnoremap <leader>sV i${<Esc>Ea}<Esc>

" Add a shebang
nnoremap <leader>! O#!/bin/bash<Esc>j0i

" A mapping to create an if statement and position the cursor inside the square brackets
nnoremap <leader>i oif [[  ]]; then<CR>fi<Esc>O<Esc>k02f a

" A mapping to create a check for argument accuracy
nnoremap <leader>ch oif [[  ]]; then<CR>fi<Esc>Oecho "HEHEHEHEH"<CR>exit 1<Esc>kk02f a

" A mapping to create a while that reads from a file line by line
nnoremap <leader>w Idone < <Esc>Oecho "${LINE}"<Esc>Owhile read LINE; do<Esc>j>>k0

" Comment
nnoremap <leader>c :s/^/# /<CR>:noh<CR>
vnoremap <leader>c :s/^/# /<CR>:noh<CR>

" Uncomment
nnoremap <leader>u :s/^# //<CR>:noh<CR>
vnoremap <leader>u :s/^# //<CR>:noh<CR>
