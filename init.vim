syntax on

set noerrorbells
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set nu
set smartcase
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch
set number relativenumber
set wildmode=longest,list,full

set colorcolumn=80
highlight ColorColumn ctermbg=0 guibg=lightgrey


call plug#begin('~/.vim/plugged')

Plug 'xuhdev/vim-latex-live-preview'
"Plug 'Valloric/YouCompleteMe'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'ervandew/supertab'

call plug#end()

inoremap jk <Esc>
inoremap " ""<left>
inoremap ' ''<left>
inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>
inoremap $ $$<left>

let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsListSnippets="<c-l>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"
let g:UltiSnipsSnippetsDir=["~/.vim/plugged/UltiSnips"]
let g:UltiSnipsSnippetDirectories=["UltiSnips"]
