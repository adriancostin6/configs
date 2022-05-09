set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab

if has('termguicolors')
    set termguicolors
endif

set nu rnu

set hidden

set noswapfile
set nobackup
set nowritebackup
set undofile
set nowrap

" Config this for windows too
set undodir=~/.config/nvim/undodir

set cursorline
set colorcolumn=120
hi ColorColumn ctermbg=lightred guibg=grey

set clipboard^=unnamed,unnamedplus
