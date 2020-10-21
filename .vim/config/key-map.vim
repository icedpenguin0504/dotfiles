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

" vim-table-mode: toggle
nnoremap :tm :TableModeToggle

" Reload .vimrc
nnoremap ::r :Reload

" Edit .vimrc
nnoremap ::v :Vimrc
