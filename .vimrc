" Required
set nocompatible
filetype off

" Remap move keys to not be the worst
noremap j h
noremap k k
noremap ; l
noremap l j

" Overlength Highlight and Word Wrap
set cc=80
set tw=79

" Basic configs
set clipboard=unnamedplus
set autoindent
set number
syntax on
set tabstop=4

"Start Pathogen
execute pathogen#infect()
filetype plugin indent on

"Syntastic Configs
let g:syntastic_c_checkers = ['gcc']
let g:syntastic_c_check_header = 1

" Colorscheme
colorscheme blackdust
