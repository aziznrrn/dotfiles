"___ BASIC CONFIGURATION ___
set relativenumber
set number
set nohlsearch
set noerrorbells
set nowrap
set smartcase
set noswapfile
set nobackup
set incsearch
set scrolloff=8
set colorcolumn=80
set signcolumn=yes
set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4
set smartindent
"___ FOR JAVASCRIPT ___
autocmd Filetype javascript setlocal ts=2 sw=2 sts=2

"___ VIM PLUGIN ___
call plug#begin('~/.vim/plugged')
Plug 'gruvbox-community/gruvbox'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
call plug#end()

"___ COLOR SCHEME ___
colorscheme gruvbox
set bg=dark
let g:airline_theme='gruvbox'

" ___ FZF CONFIG ___
" Ctrl+P: cari fil di direktori
silent! nmap <C-P> :Files<CR>

" Ctrl+G: cari fil tersimpan di repository (git)
silent! nmap <C-G> :GFiles<CR>

"Ctrl+F: cari file berdasarkan string/regex
silent! nmap <C-f> :Rg!
