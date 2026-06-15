filetype plugin on
let maplocalleader = "<space>"
syntax enable

set termguicolors

lua require("init")
lua require("keymap")

set number 
set tabstop=4
set shiftwidth=4
set expandtab
set autochdir
set ignorecase
set formatoptions=1
set lbr

let g:ale_fixers = {
\    'javascript':  ['prettier'],
\    'typescript':  ['prettier'],
\    'css':  ['prettier'],
\    'scss':  ['prettier'],
\    'html':  ['prettier'],
\    'angularhtml':  ['prettier'],
\}
let g:ale_fix_on_save = 1

let g:blamer_enabled = 1

let g:startify_fortune_use_unicode = 1
let g:startify_bookmarks = [{"a": "~/.dotfiles/.config/nvim/init.vim"}]

colorscheme catppuccin-macchiato 

