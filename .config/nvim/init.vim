" Path

let g:python_host_prog=$PYENV_ROOT.'/versions/neovim-2/bin/python'
let g:python3_host_prog=$PYENV_ROOT.'/versions/neovim-3/bin/python'

" Plugins

runtime! plugins.vim
runtime! plugin-config/*.vim

" My settings

runtime! config/core.vim
runtime! config/key-map.vim
runtime! config/color.vim
runtime! config/commands.vim
