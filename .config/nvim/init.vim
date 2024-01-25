let mapleader = "\<Space>"
set number
call plug#begin()
Plug 'vimwiki/vimwiki'
Plug 'mattn/calendar-vim'
Plug 'altercation/vim-colors-solarized'
call plug#end()
syntax enable
let g:vimwiki_list = [{'path': '~/vimwiki/',
                      \ 'syntax': 'markdown', 'ext': 'md'}]
let g:solarized_termcolors=256
let g:solarized_contrast='high'
set background=light
colorscheme solarized
highlight TrailingWhitespace ctermbg=red guibg=red
match TrailingWhitespace /[ \t]\+$/

