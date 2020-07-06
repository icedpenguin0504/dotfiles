""""""""""""""""""""""""""""""""""""""""
" Path
""""""""""""""""""""""""""""""""""""""""

let g:python_host_prog=$PYENV_ROOT.'/versions/neovim-2/bin/python'
let g:python3_host_prog=$PYENV_ROOT.'/versions/neovim-3/bin/python'

""""""""""""""""""""""""""""""""""""""""
" Plugins
""""""""""""""""""""""""""""""""""""""""

" vim-plug

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
call plug#end()

colorscheme nord

"" lightline

let g:lightline = {
      \ 'colorscheme': 'nord'
      \ }

" Need to show lightline
set laststatus=2
" Don't show mode 
set noshowmode

"" NERDTree

" show hidden files

let NERDTreeShowHidden=1

"" indentLine

let g:indentLine_char = '|'
let g:indentLine_color_term = 'darkgray'

" deoplete

let g:deoplete#enable_at_startup = 1

" ale

let g:ale_fix_on_save = 1
let g:ale_lint_on_text_changed = 1
let g:ale_sign_column_always = 1
nmap <silent> <C-k> <Plug>(ale_previous_wrap)
nmap <silent> <C-j> <Plug>(ale_next_wrap)
let g:ale_echo_msg_format = '[%linter%]%code: %%s'

""""""""""""""""""""""""""""""""""""""""
" My settings: core
""""""""""""""""""""""""""""""""""""""""

" Use space as tab
set expandtab

" Tab width
set tabstop=2

" Indent width
set shiftwidth=2

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

""""""""""""""""""""""""""""""""""""""""
" MySettings: colors
""""""""""""""""""""""""""""""""""""""""

" For nord
" These settings must be placed after colorscheme

" Comment
hi Comment ctermfg=gray

""""""""""""""""""""""""""""""""""""""""
" My settings: key maps
""""""""""""""""""""""""""""""""""""""""

" Insert mode -> Normal mode
inoremap <silent> jj <ESC>

" open / close nerdtree
nnoremap :tree :NERDTreeToggle

" fzf: files
nnoremap :ff :Files     
" fzf: file history
nnoremap :fh :History 
" fzf: current buffer
nnoremap :fb :BLines 

