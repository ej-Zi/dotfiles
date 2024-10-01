filetype plugin on
let maplocalleader = "#"
syntax enable

set termguicolors

lua require("init")
lua require("coc")
lua require("keymap")

set number 
set tabstop=4
set shiftwidth=4
set expandtab
set autochdir
set ignorecase
set formatoptions=1
set lbr

let g:coc_snippet_next = "<tab>"
let g:blamer_enabled = 1

let g:startify_fortune_use_unicode = 1
let g:startify_bookmarks = [{"a": "~/.dotfiles/.config/nvim"}]

colorscheme catppuccin-macchiato 

