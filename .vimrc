set nocompatible

" Vundle setup
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'
Bundle '256-jungle'
Bundle 'Lokaltog/vim-powerline'
Bundle 'kien/ctrlp.vim'
Bundle 'Lokaltog/vim-easymotion'

filetype plugin indent on

syntax on
set number
set pastetoggle=<F2> " When I hit F2 and paste the text it doesn't screw up
set nowritebackup    " Don't do backup as I use
set nobackup         " git for that
set noswapfile
set laststatus=2     " Always show the statusline
set mouse=nicr       " Enable mouse scrolling in VIM
set cursorline       " Underline current line
let mapleader = ","
set wildmenu
set incsearch        " Incremental highlight search
set hlsearch
set t_ut=            " Don't erase with background color (tmux fix)
                     " http://snk.tuxfamily.org/log/vim-256color-bce.html

nnoremap <silent> <leader>, :b#<CR>
nnoremap <silent> <leader>/ :nohl<CR>
nnoremap <silent> <leader>r :CtrlPBufTag<CR>
cnoremap %% <C-R>=expand('%:h').'/'<cr>

colorscheme 256-jungle
