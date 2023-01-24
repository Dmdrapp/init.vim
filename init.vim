call plug#begin('C:/Users/ddrapp/AppData/Local/nvim/plugged') 

Plug 'neoclide/coc.nvim' " Auto Completion
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' } " File Navigation
Plug 'vim-airline/vim-airline' " Status Bar
Plug 'vim-airline/vim-airline-themes' " Status Bar Theme
Plug 'junegunn/vim-easy-align'
Plug 'https://github.com/junegunn/vim-github-dashboard' " Git Dashboard
Plug 'https://github.com/tpope/vim-commentary' " For commenting gcc and gc
Plug 'https://github.com/ap/vim-css-color' " CSS color preview
Plug 'https://github.com/ryanoasis/vim-devicons' " Developer Icons
Plug 'https://github.com/tc50cal/vim-terminal' " Vim Terminal
Plug 'https://github.com/preservim/tagbar' " Tagbar for code navigation
Plug 'https://github.com/terryma/vim-multiple-cursors' " CTRL + N for multiple cursors
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'startup-nvim/startup.nvim'
" Color Schemes
Plug 'folke/tokyonight.nvim', { 'branch': 'main'}
Plug 'joshdick/onedark.vim'
Plug 'iCyMind/NeoSolarized'

call plug#end()

colorscheme tokyonight-night

let g:rehash256 = 1


" Script

lua << EOF

require"startup".setup()

EOF

""""""""""""""""""""""""""""""""""""""""""""""

" Auto Indentions
set autoindent
set expandtab
set shiftwidth=4
set smarttab
set tabstop=4

" Search
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

" Key Bindings
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>
nnoremap <space><space> :noh<cr>
nnoremap oo o<ESC>k
nnoremap OO O<ESC>j
inoremap jk <ESC>
inoremap jk <ESC>
xnoremap <Space> <ESC>

