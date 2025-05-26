function! mypsi4#DetectFileType(filename)
  " Read the first few lines of the file
  let l:first_lines = readfile(a:filename, '', 5)

  " Check for Psi4 output file markers in the first few lines
  for l:line in l:first_lines
    if l:line =~ '^\s*Psi4\s*.*$'
      return 'psi4output'
    endif
  endfor

  " If no match is found, return an empty string
  return ''
endfunction
