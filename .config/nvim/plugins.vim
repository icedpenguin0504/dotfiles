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
" Collection of languages packs
Plug 'sheerun/vim-polyglot'
" Close parentheses automatically
Plug 'cohama/lexima.vim'
" auto completion
if has('nvim')
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
else
  Plug 'Shougo/deoplete.nvim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif
" Linter
Plug 'dense-analysis/ale'
" Show git difference
Plug 'airblade/vim-gitgutter'
" Easy comment-out
Plug 'tpope/vim-commentary'
" table formatter
Plug 'dhruvasagar/vim-table-mode'
call plug#end()
