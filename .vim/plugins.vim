call plug#begin('~/.vim/plugged')
" Nord theme
Plug 'arcticicestudio/nord-vim'
" Add status line
Plug 'itchyny/lightline.vim'
" Visualize indent
Plug 'Yggdroot/indentLine'
" Close parentheses automatically
Plug 'cohama/lexima.vim'
" Show git difference
Plug 'airblade/vim-gitgutter'
" Easy comment-out
Plug 'tpope/vim-commentary'
" table formatter
Plug 'dhruvasagar/vim-table-mode'
" LSP plugin 
Plug 'neoclide/coc.nvim', {'branch': 'release'}
call plug#end()
