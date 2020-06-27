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

" shape of cursor
let &t_SI .= "\e[5 q"  " start insert mode, vertical line
let &t_EI .= "\e[1 q"  " end insert mode, block


"""""""""""""""""""
" Key bindings
"""""""""""""""""""

" Insert mode -> Normal mode
inoremap <silent> jj <ESC>

" open / close nerdtree
nnoremap :tree :NERDTreeToggle

"""""""""""""""""""
" Plugins
"""""""""""""""""""

" vim-plug

call plug#begin('~/.vim/plugged')
Plug 'arcticicestudio/nord-vim'
Plug 'preservim/nerdtree'
Plug 'itchyny/lightline.vim'
call plug#end()

colorscheme nord

" lightline

let g:lightline = {
      \ 'colorscheme': 'nord'
      \ }

" Need to show lightline
set laststatus=2
" Don't show mode 
set noshowmode

"""""""""""""""""""
" colors
"""""""""""""""""""

" For nord
" These settings must be placed after colorscheme

" Comment
hi Comment ctermfg=gray
