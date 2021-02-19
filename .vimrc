set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

" Keep Plugin commands between vundle#begin/end.
Plugin 'preservim/nerdtree.git'
Plugin 'vim-airline/vim-airline'
Plugin 'dart-lang/dart-vim-plugin'

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
syntax enable 

filetype on
filetype indent on
set smartindent
filetype plugin on

let mapleader = ","
let dart_html_in_string=v:true
let g:dart_style_guide = 2
let g:dart_format_on_save = 1

set cursorline
set scrolloff=3
set number
"set cursorcolumn 
set softtabstop=2
set shiftwidth=2

"set foldmethod=syntax
set ignorecase
set hlsearch
set autoindent
set backspace=indent,eol,start

set smartcase
set incsearch 
set showmatch

set visualbell

set nocompatible
set expandtab

autocmd BufRead,BufWritePre *.html normal gg=G 
autocmd Filetype html nnoremap <leader>c I<!--<esc>A--><esc>

augroup javascript 
  autocmd!
  autocmd Filetype javascript nnoremap <buffer> <leader>c I// <esc> 
  autocmd Filetype javascript nnoremap <buffer> <leader>r :!node %<cr>
augroup END
 
augroup dart 
  autocmd!
  autocmd Filetype dart nnoremap <buffer> <leader>c I// <esc>
  autocmd Filetype dart nnoremap <buffer> <leader>r :!dart %<cr>
augroup END

noremap <left> <nop>
noremap <right> <nop>
noremap <up> <nop>
noremap <down> <nop>

set showcmd
set undofile
set wildmenu

"mapping
nnoremap z dd

onoremap p i(
onoremap c i{
onoremap q i"
