" congigure backspace to be normal
set backspace=eol,start,indent
set whichwrap+=<,>,h,l

" map leader to be ','
let mapleader = ","
let g:mapleader = ","

" fast saving
nmap <leader>w :w!<cr>

" disable highlight when <leader><cr> is pressed (,+Enter)
map <silent> <leader><cr> :noh<cr>

" smart way to move between widows
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" managing tabs
map <leader>tn :tabnew<cr>
map <leader>tc :tabclose<cr>
map <leader>to :tabonly<cr>
map <leader>tm :tabmove
map <leader>t<leader> :tabnext

" open a new tab with the current buffer's path
" super useful when editing files in the same dir
map <leader>te :tabedit <c-r>=expand("%:p:h")<cr>

" switch CWD to the directory of the open buffer
map <leader>cd :cd %:p:h<cr>:pwd<cr>

" Spell checking
map <F5> :setlocal spell!<cr>
map <leader>sn ]s
map <leader>sp [s
map <leader>sa zg
map <leader>s? z=

" NERDTree shortcuts
map <leader>nt :NERDTreeToggle<CR>
map <leader>nf :NERDTreeFind<CR>

" CTRL+P
map <c-p> :CtrlP<CR>

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


