" ~/.vim/after/ftplugin/psi4output/syntax.vim
" Enable syntax highlighting for this filetype
if exists("b:current_syntax")
  finish
endif
runtime! syntax/psi4output.vim
let b:current_syntax = "psi4output"
