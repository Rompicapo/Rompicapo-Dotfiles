set nocompatible
syntax enable
filetype plugin on

set tabstop=4 softtabstop=4
set expandtab
set number
set path+=**
set wildmenu

"style
colorscheme beekai
hi Normal guibg=NONE ctermbg=NONE
hi NonText guibg=NONE ctermbg=NONE 

"map
map <F2> :echo 'Current time is ' . strftime('%c')<CR>
nnoremap S :%s///g
"plugin 
call plug#begin('~/.vim/plugged')

Plug 'iamcco/markdown-preview.vim'
"math markdown
Plug 'iamcco/mathjax-support-for-mkdp'
Plug 'iamcco/markdown-preview.viprocessing.vim'
"Processing 
Plug 'sophacles/vim-processing'
"Rust
Plug 'rust-lang/rust.vim'

"c#
Plug 'OrangeT/vim-csharp'
call plug#end()
