" Insert mode -> Normal mode
inoremap <silent> jj <ESC>

" vim-table-mode: toggle
nnoremap ::tm :TableModeToggle

" Reload .vimrc
nnoremap ::r :Reload

" Edit .vimrc
nnoremap ::v :Vimrc

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
