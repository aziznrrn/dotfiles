"___ BASIC CONFIGURATION ___
set relativenumber
set number
set nohlsearch
set belloff=all
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
call plug#begin('/home/aziz/.vim/plugged')
Plug 'gruvbox-community/gruvbox'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

Plug 'neoclide/coc.nvim', {'do': 'yarn install --frozen-lockfile'} " this is for auto complete, prettier and tslinting
let g:coc_global_extensions = ['coc-tslint-plugin', 'coc-tsserver', 'coc-css', 'coc-html', 'coc-json', 'coc-prettier']  " list of CoC extensions needed
Plug 'jiangmiao/auto-pairs' "this will auto close ( [ {
" these two plugins will add highlighting and indenting to JSX and TSX files.
Plug 'yuezk/vim-js'
Plug 'HerringtonDarkholme/yats.vim'
Plug 'maxmellon/vim-jsx-pretty'

call plug#end()

"___ COLOR SCHEME ___
colorscheme gruvbox
set bg=dark
let g:airline_theme='gruvbox'

" ___ FZF CONFIG ___
" Ctrl+P: cari file di direktori
silent! nmap <C-P> :Files<CR>

" Ctrl+G: cari file tersimpan di repository (git)
silent! nmap <C-G> :GFiles<CR>

"Ctrl+F: cari file berdasarkan string/regex
silent! nmap <C-f> :Rg!
