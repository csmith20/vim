" My Vimrc file
" Owner:  Chris Smith

set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'bling/vim-airline'

call vundle#end()
filetype plugin indent on

augroup reload_vimrc " {
	autocmd!
	autocmd BufWritePost $MYVIMRC source $MYVIMRC
augroup END "}

syntax on

set smartindent

set shiftwidth=4
set tabstop=4
set expandtab
set smarttab

set number

let g:airline_powerline_fonts=0
let g:airline_theme = 'badwolf'
set laststatus=2
set t_Co=256
set noshowmode

