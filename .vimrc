" vim:foldmethod=marker:foldlevel=0

" Vundle Setup & Plugins {{{
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'https://github.com/vim-syntastic/syntastic'
Plugin 'https://github.com/tpope/vim-fugitive'
Plugin 'https://github.com/scrooloose/nerdtree'
Plugin 'https://github.com/ctrlpvim/ctrlp.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'Raimondi/delimitMate' " automatic closing of quotes, parenthesis, brackets, etc.

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
" }}}

source $HOME/.config/vim/general.vimrc
source $HOME/.config/vim/keys.vimrc
source $HOME/.config/vim/ui.vimrc
source $HOME/.config/vim/plugins.vimrc
