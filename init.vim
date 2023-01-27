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
Plug 'https://github.com/tc50cal/vim-terminal' " Vim T=erminal
Plug 'https://github.com/preservim/tagbar' " Tagbar for code navigation
Plug 'https://github.com/terryma/vim-multiple-cursors' " CTRL + N for multiple cursors
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'startup-nvim/startup.nvim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'OmniSharp/omnisharp-vim'
Plug 'dense-analysis/ale'

" Color Schemes
Plug 'folke/tokyonight.nvim', { 'branch': 'main'}
Plug 'joshdick/onedark.vim'
Plug 'iCyMind/NeoSolarized'

call plug#end()

colorscheme tokyonight-night

let g:rehash256 = 1

" Script "

lua << EOF

require"startup".setup()

EOF

""""""""""""""""""""""""""""""""""""""""""""""

let mapleader=","
set timeoutlen=500

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
nnoremap <leader>n :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>
nnoremap <space><space> :noh<cr>
nnoremap oo o<ESC>k
nnoremap OO O<ESC>j
inoremap jk <ESC>
inoremap jj <ESC>
xnoremap <Space> <ESC>

" COC Configurations

nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gr <Plug>(coc-references)

nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)
nnoremap <silent> <space>s :<C-u>CocList -I symbols<cr>

nnoremap <silent> <space>d :<C-u>CocList diagnostics<cr>

nmap <leader>do <Plug>(coc-codeaction)

nmap <leader>rn <Plug>(coc-rename)

inoremap <silent><expr> <TAB>
      \ coc#pum#visible() ? coc#pum#next(1) :
      \ CheckBackspace() ? "\<Tab>" :
      \ coc#refresh()
inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"

" Make <CR> to accept selected completion item or notify coc.nvim to format
" <C-g>u breaks current undo, please make your own choice
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion "

if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif


" NERDTree Configurations

let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'
