"vim-notes
"By Anjesh Tuladhar

if exists("g:loaded_notes")
    finish
endif

let g:loaded_notes = 1

if !exists("g:NOTES_DIR")
    let g:NOTES_DIR = "~/.notes"
endif

function! Note(filename, ...)
    let l:dir = expand(g:NOTES_DIR)
    if !isdirectory(l:dir)
        exe "silent !mkdir ".l:dir
    endif
    let l:filename = join(split(a:filename),"-")
    exe "lcd ".l:dir
    exe "e ".l:filename
endfunction

function! EditCompleteFile(A,L,P)
    return split(globpath(g:NOTES_DIR, "*"), "\n")
endfunction

command! -complete=customlist,EditCompleteFile  -nargs=1 Note call Note(<f-args>)
