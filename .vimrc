"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Author: 
"       Chris Smith
"
" Version: 
"       1.0
"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Disable vi compatibility (emulation of old bugs)
set nocompatible
filetype off

" Set utf8 as standard encoding and en_US as the standard language
set encoding=utf8

" Use indentation of previous line
set autoindent

" Use intelligent indentation for C
set smartindent

" Configure tabwidth and insert spaces instead of tabs
set tabstop=4        " tab width is 4 spaces
set shiftwidth=4     " indent also with 4 spaces
set expandtab        " expand tabs to spaces

" Turn syntax highlighting on
set t_Co=256
syntax on

" Show line numbers
set number

" Highlight matching braces
set showmatch

"Always show current position
set ruler

" Highlight all Search Matches
set hlsearch

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Colors and Fonts
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Enable syntax highlighting
syntax enable

set background=dark

" Set colorscheme
" colorscheme jellybeans 
colorscheme sublimemonokai 

" Set Page size Column stripe
set colorcolumn=120
highlight ColorColumn ctermbg=darkgray

augroup project
    autocmd!
    autocmd BufRead,BufNewFile *.h,*.c set filetype=c.doxygen
augroup END

" Change <Leader> key
let mapleader=","

" Open a new tab and search for something
nmap <leader>a :tab split<CR>:Ack ""<Left>

" Immediately search for the word under the cursor in a new tab
nmap <leader>A :tab split<CR>:Ack <C-r><C-w><CR>

