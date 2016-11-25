set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
" Intelligent line numbers
Plugin 'myusuf3/numbers.vim'
" Solarized Colors
Plugin 'altercation/vim-colors-solarized'
" Nice code folding
Plugin 'tmhedberg/SimpylFold'
" Python autoindent
Plugin 'vim-scripts/indentpython.vim'
" Syntax highlighting
Plugin 'scrooloose/syntastic'
" PEP8 highlighting
Plugin 'nvie/vim-flake8'
" File Tree
Plugin 'scrooloose/nerdtree'
" Searching
Plugin 'kien/ctrlp.vim'
" Powerline
Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

:au FocusLost * :set number
:au FocusGained * :set relativenumber
autocmd InsertEnter * :set number
autocmd InsertLeave * :set relativenumber

syntax enable
set background=dark
colorscheme solarized

" Enable folding
set foldmethod=indent
set foldlevel=99
" Enable folding with the spacebar
nnoremap <space> za

au BufNewFile,BufRead *.py
    \ set tabstop=4
    \ set softtabstop=4
    \ set shiftwidth=4
    \ set textwidth=79
    \ set expandtab
    \ set autoindent
    \ set fileformat=unix

au BufNewFile,BufRead *.js, *.html, *.css
    \ set tabstop=2
    \ set softtabstop=2
    \ set shiftwidth=2

set encoding=utf-8
" flag unnecessary whitespace
au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/
let NERDTreeIgnore=['\.pyc$', '\~$'] "ignore files in NERDTree

let python_highlight_all=1
syntax on
