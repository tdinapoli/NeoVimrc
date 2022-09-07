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
set clipboard+=unnamedplus

let mapleader=","

call plug#begin('~/.vim/plugged')

Plug 'xuhdev/vim-latex-live-preview'
"Plug 'Valloric/YouCompleteMe'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'ervandew/supertab'
Plug 'preservim/nerdtree'
Plug 'turbio/bracey.vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

call plug#end()

inoremap jk <Esc>
inoremap { {}<left>
inoremap ( ()<left>
inoremap [ []<left>
inoremap < <><left>
inoremap " ""<left>
inoremap ' ''<left>
inoremap $ $$<left>
nnoremap <C-j> :tabprevious<CR>
nnoremap <C-k> :tabnext<CR>
nnoremap <F3> :set hlsearch!<CR>
nnoremap j gj
nnoremap k gk
nnoremap >> <<
nnoremap << >>
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-h> <C-w>h
map <C-l> <C-w>l

map <leader>n :NERDTreeToggle<CR>


""MOUSE
set mouse=a

""AUTO CMDS

"LATEX

autocmd FileType tex nnoremap <buffer> j gj
autocmd FileType tex nnoremap <buffer> k gk
autocmd FileType tex map <buffer> <F9> :w<CR>:exec '!pdflatex -interacion=nonstopmode' shellescape(@%, 1)<CR>
autocmd FileType tex imap <buffer> <F9> <esc>:w<CR>:exec '!pdflatex -interaction=nonstopmode' shellescape(@%, 1)<CR>

"PYTHON

autocmd FileType python map <buffer> <F9> :w<CR>:exec '!python3' shellescape(@%, 1)<CR>
autocmd FileType python imap <buffer> <F9> <esc>:w<CR>:exec '!python3' shellescape(@%, 1)<CR>
autocmd FileType python nnoremap <leader>c :echo getline(search('class ', 'bn'))<CR>
autocmd FileType python nnoremap <leader>f :echo getline(search('def ', 'bn'))<CR>

"JAVASCRIPT"
autocmd FileType javascript noremap <buffer> <F9> :w<CR>
autocmd FileType javascript imap <buffer> <F9> <esc>:w<CR>

"C

autocmd FileType c map <buffer> <F8> :w<CR>:exec 'make all' shellescape(@%, 1)<CR>
autocmd FileType c imap <buffer> <F8> <esc>:w<CR>:exec 'make all' shellescape(@%, 1)<CR>
autocmd FileType c map <buffer> <F9> :w<CR>:exec 'make download' shellescape(@%, 1)<CR>
autocmd FileType c imap <buffer> <F9> <esc>:w<CR>:exec 'make download' shellescape(@%, 1)<CR>

"fzf
nnoremap <C-p> :Files<Cr>
nmap <silent> <leader>a :History<CR>

let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsListSnippets="<c-l>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"
let g:UltiSnipsSnippetsDir=["~/.vim/plugged/vim-snippets"]
let g:UltiSnipsSnippetDirectories=["UltiSnips"]
