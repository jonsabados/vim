set nocompatible
filetype off

filetype plugin indent on

set rtp+=~/.vim/bundle/vundle
call vundle#rc()


" vundle lives @ https://github.com/gmarik/vundle/
Bundle 'gmarik/vundle'

Bundle 'tpope/vim-fugitive'
Bundle 'michalliu/jsruntime.vim'
Bundle 'vim-scripts/taglist.vim'
Bundle 'rosenfeld/conque-term'


if executable('ctags')
    Bundle 'Lokaltog/vim-powerline'
    Bundle 'majutsushi/tagbar'
endif

 " Bundle commands:
 "
 " :BundleList          - list configured bundles
 " :BundleInstall(!)    - install(update) bundles
 " :BundleSearch(!) foo - search(or refresh cache first) for foo
 " :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
 "
 " see :h vundle for more details or wiki for FAQ
 " NOTE: comments after Bundle command are not allowed..

set expandtab
set tabstop=4
set number
set mouse=a
set laststatus=2
set syntax=on
set showmatch
set autoindent
set si

filetype indent on
filetype on

let Tlist_WinWidth = 30

map <F4> :TlistToggle<cr>
map <F8> :!ctags -R .<CR>

function c:currentBuffer()
    return join(getline(1,'$'), "\n")
endfunction

command RunJs echo b:jsruntimeEvalScript(c:currentBuffer())
command Shell :ConqueTerm bash

