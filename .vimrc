colors jellybeans
syntax on

set number
set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4
set nofoldenable
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'
Plugin 'JamshedVesuna/vim-markdown-preview'
Plugin 'Valloric/YouCompleteMe'
Plugin 'w0rp/ale'
Plugin 'pangloss/vim-javascript'
Plugin 'mxw/vim-jsx'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'scrooloose/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'

" colors
Plugin 'nanotech/jellybeans.vim'


" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

if has("autocmd")
    au BufRead,BufNewFile *.ejs setfiletype html
endif

let @w = '/\s\+$'

" Airline
let g:airline_theme='jellybeans'

" NERDTree
nnoremap F :NERDTreeToggle<Enter>
