syntax on
set nocompatible
set ignorecase
set encoding=utf-8
set tabstop=2 shiftwidth=2
set expandtab
set smartcase
set smartindent
set smarttab
set incsearch
set hlsearch
:imap jj <Esc>
let mapleader=","
nnoremap <leader><leader> <C-^>
nnoremap <leader>w <C-w>v<C-w>l
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

cnoremap %% <C-R>=expand('%:h').'/'<cr>
set pastetoggle=<F2>
nmap <silent> ,/ :nohlsearch<CR>
nmap <silent> <Space> a_<Esc>r

