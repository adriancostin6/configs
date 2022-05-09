"nvim-qt settings
GuiFont! Iosevka NF:h14:w0
GuiPopupmenu 0

let s:fontsize = 12
function! AdjustFontSize(amount)
    let s:fontsize = s:fontsize+a:amount
    :execute "GuiFont! Iosevka NF:h" . s:fontsize . ":w0"
endfunction

" In normal mode, pressing numpad's+ increases the font
noremap + :call AdjustFontSize(1)<CR>
noremap - :call AdjustFontSize(-1)<CR>

