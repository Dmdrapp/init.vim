" set runtimepath^=~/.vim/bundle/nerdtree-master/nerdtree-master
" set runtimepath^=~/.vim/bundle/vimwiki-master

" Using auto indentions
set autoindent
set expandtab
set shiftwidth=4
set smarttab
set tabstop=4

" Searching
set hlsearch
set ignorecase
set smartcase

" Text Rendering
syntax enable

" UI
set relativenumber
set number
set noerrorbells
set mouse=a
set title
set background=dark
set wildmenu
set spell
set bs=2
colorscheme slate

set nocompatible
filetype plugin on
" Key bindings
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>
inoremap jk <ESC>
xnoremap <Space> <ESC>

" Scripts
