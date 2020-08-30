" Use space as tab
set expandtab

" Tab width
set tabstop=2

" Indent width
set shiftwidth=2

" indent settings for each file type
if has("autocmd")
  filetype plugin on
  filetype indent on
  autocmd Filetype kotlin setlocal shiftwidth=4
endif

" Indent when pressing tab
set smarttab

" Keep current indent
" set autoindent

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

" Disable automatic comment out
autocmd Filetype * set formatoptions-=ro

" shape of cursor
let &t_SI .= "\e[5 q"  " start insert mode, vertical line
let &t_EI .= "\e[1 q"  " end insert mode, block
