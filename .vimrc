""""""""""""""""""""
" Core
""""""""""""""""""""

" Use space as tab
set expandtab

" Tab width
set tabstop=2

" Indent width
set shiftwidth=2

" Indent when pressing tab
set smarttab

" Keep current indent
set autoindent

" C-like indent
set smartindent

" line number
set number

" syntax highlighting
syntax on

" show current line
set cursorline

" enhance command-line completion
set wildmenu

"""""""""""""""""""
" Key bindings
"""""""""""""""""""

" Insert mode -> Normal mode
inoremap <silent> jj <ESC>


"""""""""""""""""""
" Plugins
"""""""""""""""""""

" vim-plug

call plug#begin('~/.vim/plugged')
Plug 'arcticicestudio/nord-vim'
call plug#end()

colorscheme nord
