" Vimscript mappings
let mapleader = " "

"Open file explorer in current dir
nnoremap <leader>e :Ex<CR>

"cd to working dir of current file for the current window
nnoremap <leader>cd :lcd %:h<CR>

"Open vimrc
nnoremap <leader>v :e ~/.config/nvim/<CR>

nnoremap <silent>+ :call FontSizePlus()<CR>
nnoremap <silent>- :call FontSizeMinus()<CR>
