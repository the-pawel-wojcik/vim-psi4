" ~/.vim/syntax/psi4output.vim
" Vim syntax file
" Language: Psi4 Output
" Maintainer: Gemini & Paweł
" Last Change: 2025-05-24

" Remove any existing syntax rules for this filetype
if exists("b:current_syntax")
  unlet b:current_syntax
endif

" Define syntax highlighting groups
" Keywords (e.g., "Energy", "Total", etc.)
syntax keyword psi4Keyword Energy Total Correlation

" Floating point numbers
syntax match psi4Float "\<[-+]?\d*\.\d\+\(E[-+]?\d\+\)\=\>"

" Sections (e.g., " ==> Post-Iterations <==")
syntax region psi4Section start="^\s*=\+>\s*\(.*\)\s*<=\+\s*$" end="^\s*=\+>\s*\(.*\)\s*<=\+\s*$" keepend

" Error messages
syntax match psi4Error "Error:.*"

"Link group
hi link psi4Keyword Keyword
hi link psi4Float Float
hi link psi4Section Title
hi link psi4Error Error

let b:current_syntax = "psi4output"
