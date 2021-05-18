syntax on
          
set backspace=indent,eol,start
set noshowmode
set number
set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4
set nofoldenable
set nocompatible              " be iMproved, required
set laststatus=2              " Required by lightline
filetype off                  " required

call plug#begin('~/.vim/plugged')

Plug 'arcticicestudio/nord-vim'
Plug 'preservim/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'itchyny/lightline.vim'

call plug#end()

" Nord
colorscheme nord

" Lightline
let g:lightline = {'colorscheme': 'nord'}

filetype plugin indent on    " required

if has("autocmd")
    au BufRead,BufNewFile *.ejs setfiletype html
endif

let @w = '/\s\+$'

" NERDTree
nnoremap F :NERDTreeToggle<Enter>
