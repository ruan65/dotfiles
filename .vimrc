execute pathogen#infect()
syntax on 
filetype plugin indent on

set smartindent

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
set incsearch 
set autoindent
set backspace=indent,eol,start

set smartcase
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
nnoremap <leader><space> :noh<cr>
nnoremap z dd
nnoremap mm zz
nnoremap <leader>l o

onoremap p i(
onoremap c i{
onoremap q i"
 
function! InsertTabWrapper()
  let col = col(".") - 1
  if !col || getline(".")[col - 1] !~ '\k'
    return "\<tab>"
  else
    return "\<c-n>"
endfunction

"inoremap <tab> <c-r>=InsertTabWrapper()<cr>
"inoremap <s-tab> <c-p>

cnoreabbrev sv so $MYVIMRC 
