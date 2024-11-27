set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'ycm-core/YouCompleteMe'
Plugin 'octol/vim-cpp-enhanced-highlight'
Plugin 'tomasiser/vim-code-dark'

call vundle#end()            " required
filetype plugin indent on    " required
" Put your non-Plugin stuff after this lin

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Variables of all sorts
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set number
set tabstop=4
set shiftwidth=4
set expandtab
set nowrap
set backspace=indent,eol,start
set incsearch
set ruler
set colorcolumn=80
syntax enable

let g:cpp_class_scope_highlight = 1
au BufNewFile,BufRead *.tpp set filetype=cpp

" ycm config
let g:ycm_python_binary_path = '/home/singera8/.local/bin/python3'
let g:ycm_autoclose_preview_window_after_insertion=1
let g:ycm_clangd_binary_path = exepath("/usr/bin/clangd-17")

" color scheme
colorscheme codedark

" go to last opened position
autocmd BufReadPost * if @% !~# '\.git[\/\\]COMMIT_EDITMSG$' && line("'\"") > 1 && line("'\"") <= line("$") | exe
"normal! g`\"" | endif
