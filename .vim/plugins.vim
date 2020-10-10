call plug#begin('~/.vim/plugged')
" Nord theme
Plug 'arcticicestudio/nord-vim'
" Show file tree
Plug 'preservim/nerdtree'
" Add status line
Plug 'itchyny/lightline.vim'
" Visualize indent
Plug 'Yggdroot/indentLine'
" fuzzy search
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
" Fuzzy search from project root directory
Plug 'airblade/vim-rooter'
" Close parentheses automatically
Plug 'cohama/lexima.vim'
" Linter
Plug 'dense-analysis/ale'
" Show git difference
Plug 'airblade/vim-gitgutter'
" Easy comment-out
Plug 'tpope/vim-commentary'
" table formatter
Plug 'dhruvasagar/vim-table-mode'
" LSP plugin 
Plug 'neoclide/coc.nvim', {'branch': 'release'}
call plug#end()
