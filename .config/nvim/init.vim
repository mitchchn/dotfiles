" props to https://dougblack.io/words/a-good-vimrc.html
" https://shop.learncodethehardway.org/access/buy/16/

syntax enable

" set rnu

set number
set smartindent
set cursorline

" Plugins (vim-plug)
" https://github.com/junegunn/vim-plug
call plug#begin()
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'junegunn/fzf'
Plug 'rust-lang/rust.vim', { 'for': 'rust' }
call plug#end()

" rust config
let g:LanguageClient_serverCommands = {
\ 'rust': ['rust-analyzer'],
\ }
let g:rustfmt_autosave = 1

" toggle between number and relativenumber
function! ToggleNumber()
    if(&relativenumber == 1)
        set norelativenumber
        set number
    else
        set relativenumber
    endif
endfunc
