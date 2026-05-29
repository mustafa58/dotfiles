function! netrw_preview#attach() abort
  augroup NetrwAutoPreview
    autocmd!
    autocmd CursorMoved * if &ft == 'netrw' | call netrw_preview#NetrwPreview() | endif
  augroup END
endfunction

function! netrw_preview#NetrwPreview() abort
  " Get the file under cursor via netrw's own function
  let l:fname = netrw#Call('NetrwFile', expand('<cfile>'))
  " netrw#Call may not exist in all versions — use fallback:
  let l:cfile = expand('<cfile>:p')

  " Skip directories, the banner, and empty lines
  if l:cfile == '' || isdirectory(l:cfile) || getline('.') =~ '^"'
    return
  endif

  " Avoid re-previewing the same file on every CursorMoved
  if exists('s:last_preview') && s:last_preview == l:cfile
    return
  endif
  let s:last_preview = l:cfile

  " Open in preview window (top-right split, doesn't move cursor)
  " This opens the file in the preview window without moving focus
  silent! execute "normal p"
  " Jump into preview, trigger filetype detection, jump back
  wincmd P
  filetype detect
  wincmd p
endfunction
