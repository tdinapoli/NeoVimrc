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

let mapleader=","

call plug#begin('~/.vim/plugged')

Plug 'xuhdev/vim-latex-live-preview'
"Plug 'Valloric/YouCompleteMe'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'ervandew/supertab'
Plug 'preservim/nerdtree'
Plug 'turbio/bracey.vim'

call plug#end()

inoremap jk <Esc>
inoremap { {}<left>
inoremap ( ()<left>
inoremap [ []<left>
inoremap < <><left>
inoremap " ""<left>
inoremap ' ''<left>
nnoremap <C-j> :tabprevious<CR>
nnoremap <C-k> :tabnext<CR>
nnoremap <F3> :set hlsearch!<CR>
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-h> <C-w>h
map <C-l> <C-w>l

map <leader>n :NERDTreeToggle<CR>

""AUTO CMDS

"LATEX

autocmd FileType tex nnoremap <buffer> j gj
autocmd FileType tex nnoremap <buffer> k gk

"PYTHON

autocmd FileType python map <buffer> <F9> :w<CR>:exec '!python3' shellescape(@%, 1)<CR>
autocmd FileType python imap <buffer> <F9> <esc>:w<CR>:exec '!python3' shellescape(@%, 1)<CR>

autocmd FileType c map <buffer> <F8> :w<CR>:exec 'make all' shellescape(@%, 1)<CR>
autocmd FileType c imap <buffer> <F8> <esc>:w<CR>:exec 'make all' shellescape(@%, 1)<CR>
autocmd FileType c map <buffer> <F9> :w<CR>:exec 'make download' shellescape(@%, 1)<CR>
autocmd FileType c imap <buffer> <F9> <esc>:w<CR>:exec 'make download' shellescape(@%, 1)<CR>

let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsListSnippets="<c-l>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"
let g:UltiSnipsSnippetsDir=["~/.vim/plugged/vim-snippets"]
let g:UltiSnipsSnippetDirectories=["UltiSnips"]
