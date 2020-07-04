" General setup

set number
set cursorline
syntax on

" Plugins (vim-plug)
" https://github.com/junegunn/vim-plug
call plug#begin()

" Enhancements
Plug 'itchyny/lightline.vim'
Plug 'junegunn/fzf'

" language support
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'rust-lang/rust.vim', { 'for': 'rust' }

call plug#end()

" Rust
let g:LanguageClient_serverCommands = {'rust': ['rust-analyzer']}
let g:rustfmt_autosave = 1

" Toggle between number and relativenumber
function! ToggleNumber()
    if(&relativenumber == 1)
        set norelativenumber
        set number
    else
        set relativenumber
    endif
endfunc
