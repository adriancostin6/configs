" Cryptwiki
command! PushNotes :call PushNotes()
command! PullNotes :call PullNotes()

" Some magic to remove a C function definition based on regex pattern
" Link for insight: https://vi.stackexchange.com/questions/13603/regex-to-match-any-character-including-newline
" TODO - modify this, migrate to lua and make better
command RemoveCFunctionPattern :%s/.*<__FunctionName__>.*\_.\{-}};//
