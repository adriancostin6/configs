function! PushNotes()
    if has('win64') || has('win32') || has('win16')
       silent! AsyncRun -cwd=~/doc/adrian-cryptwiki push-notes.bat 
    else
       silent! AsyncRun -cwd=~/doc/adrian-cryptwiki ./push-notes.sh 
    endif
endfunction

function! PullNotes()
    if has('win64') || has('win32') || has('win16')
       silent! AsyncRun -cwd=~/doc/adrian-cryptwiki pull-notes.bat 
    else
       silent! AsyncRun -cwd=~/doc/adrian-cryptwiki ./pull-notes.sh 
    endif
endfunction

" Cryptwiki
command! PushNotes :call PushNotes()
command! PullNotes :call PullNotes()
