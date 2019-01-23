" props to https://dougblack.io/words/a-good-vimrc.html
" https://shop.learncodethehardway.org/access/buy/16/

syntax enable

" set rnu

set number
set smartindent
set cursorline

" toggle between number and relativenumber
function! ToggleNumber()
    if(&relativenumber == 1)
        set norelativenumber
        set number
    else
        set relativenumber
    endif
endfunc