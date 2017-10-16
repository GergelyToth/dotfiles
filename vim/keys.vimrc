" map leader to be ','
let mapleader = ","
let g:mapleader = ","
" map localleader to be '\'
let maplocalleader = "\\"
let g:maplocalleader = "\\"

" disable arrow keys
:noremap <Up> <Nop>
:noremap <Down> <Nop>
:noremap <Left> <Nop>
:noremap <Right> <Nop>

" remap arrow keys in normal mode
" buffer next & prev
:nnoremap <Up> :bn<cr>
:nnoremap <Down> :bp<cr>
" tab next & prev
:nnoremap <Left> :tabnnext<cr>
:nnoremap <Right> :tabprev<cr>

" congigure backspace to be normal
set backspace=eol,start,indent
set whichwrap+=<,>,h,l


" fast saving
nnoremap <leader>w :w!<cr>

" disable highlight when <leader><cr> is pressed (,+Enter)
noremap <silent> <leader><cr> :noh<cr>

" smart way to move between widows
noremap <C-j> <C-W>j
noremap <C-k> <C-W>k
noremap <C-h> <C-W>h
noremap <C-l> <C-W>l

" managing tabs
noremap <leader>tn :tabnew<cr>
noremap <leader>tc :tabclose<cr>
noremap <leader>to :tabonly<cr>
noremap <leader>tm :tabmove
noremap <leader>t<leader> :tabnext

" open a new tab with the current buffer's path
" super useful when editing files in the same dir
noremap <leader>te :tabedit <c-r>=expand("%:p:h")<cr>

" switch CWD to the directory of the open buffer
noremap <leader>cd :cd %:p:h<cr>:pwd<cr>

" Spell checking
noremap <F5> :setlocal spell!<cr>
noremap <leader>sn ]s
noremap <leader>sp [s
noremap <leader>sa zg
noremap <leader>s? z=

" NERDTree shortcuts
noremap <leader>nt :NERDTreeToggle<CR>
noremap <leader>nf :NERDTreeFind<CR>

" CTRL+P
noremap <c-p> :CtrlP<CR>

" Autofold indent code with space
set foldmethod=indent
nnoremap <space> za
vnoremap <space> zf

" F12 to source the vimrc file
map <F12> :source ~/.vimrc<cr>
" F10 to open vimrc
map <F10> :e ~/.vimrc<cr>
" F9 to get to edit the separate vim configs
map <F9> :e ~/.config/vim/

" Tab for vim's own auto complete
imap <Tab> <C-P>


