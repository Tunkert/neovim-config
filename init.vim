set tabstop=4
set shiftwidth=4
set softtabstop=4

call plug#begin()

Plug 'folke/zen-mode.nvim'
Plug 'https://github.com/jiangmiao/auto-pairs.git'
Plug 'arjunmahishi/run-code.nvim'
Plug 'https://github.com/rebelot/kanagawa.nvim.git'
Plug 'https://github.com/vim-airline/vim-airline.git'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  }
Plug 'https://github.com/neoclide/coc.nvim.git'
Plug 'https://github.com/prettier/vim-prettier.git'

call plug#end()

lua << EOF
  require("zen-mode").setup {
  }
EOF

inoremap <c-a> <Esc>:ZenMode<cr>
nnoremap <c-a> <Esc>:ZenMode<cr>

set termguicolors
colo kanagawa

set number
set relativenumber

let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

inoremap <c-s> <Esc>:MarkdownPreview<cr>
nnoremap <c-s> <Esc>:MarkdownPreview<cr>

inoremap <M-s> <Esc>:MarkdownPreviewStop<cr>
nnoremap <M-s> <Esc>:MarkdownPreviewStop<cr>

set mouse=a
set scrolloff=3

inoremap <c-p> <Esc>:Prettier<cr>
nnoremap <c-p> <Esc>:Prettier<cr>
