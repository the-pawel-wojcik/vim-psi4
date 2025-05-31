" ~/.vim/ftdetect/psi4output.vim
augroup filetypedetect
    au! BufRead,BufNewFile *.out,*.psi4 call s:DetectPsi4FileType()
augroup END

function! s:DetectPsi4FileType()
    let filetype = psi4#DetectFileType(expand("<afile>:p"))
    if !empty(filetype)
        set filetype=psi4output
    endif
endfunction
