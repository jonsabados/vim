set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim

if has("gui_running")
  set lines=999 columns=999
endif

colorscheme murphy 

filetype plugin indent on

call vundle#begin()


" vundle lives @ https://github.com/gmarik/vundle/
Plugin 'gmarik/vundle'
Plugin 'tpope/vim-fugitive'
Plugin 'michalliu/jsruntime.vim'
Plugin 'vim-scripts/taglist.vim'
Plugin 'rosenfeld/conque-term'
Plugin 'akhil/scala-vim-bundle'

if executable('ctags')
    Plugin 'Lokaltog/vim-powerline'
    Plugin 'majutsushi/tagbar'
endif

call vundle#end()

 " Bundle commands:
 "
 " :PluginListt          - list configured bundles
 " :PluginInstall   - install(update) bundles
 " :PluginSearch foo - search(or refresh cache first) for foo
 " :PluginClean      - confirm(or auto-approve) removal of unused bundles
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

set tags=~/.vim/ctags


let Tlist_WinWidth = 30

map <F4> :TlistToggle<cr>
map <F8> :!ctags -f ~/.vim/ctags -R <c-r>=getcwd()<cr><cr>

function c:currentBuffer()
    return join(getline(1,'$'), "\n")
endfunction

command RunJs echo b:jsruntimeEvalScript(c:currentBuffer())
command Shell :ConqueTerm bash

