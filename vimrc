"___ BASIC CONFIGURATION ___
set number
set relativenumber
set showmode
syntax on

"___ VIM PLUGIN ___
call plug#begin('~/.vim/plugged')
Plug 'morhetz/gruvbox'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
call plug#end()

"___ COLOR SCHEME ___
colorscheme gruvbox
set bg=dark
let g:airline_theme='gruvbox'

"___ FILETYPE INDENTATION ___
autocmd FileType javascript setlocal shiftwidth=2 tabstop=2
autocmd FileType html setlocal shiftwidth=2 tabstop=2
autocmd FileType python setlocal expandtab shiftwidth=4 softtabstop=4

" ___ FZF CONFIG ___
" Ctrl+P: cari fil di direktori
silent! nmap <C-P> :Files<CR>

" Ctrl+G: cari fil tersimpan di repository (git)
silent! nmap <C-G> :GFiles<CR>

"Ctrl+F: cari file berdasarkan string/regex
silent! nmap <C-f> :Rg!
