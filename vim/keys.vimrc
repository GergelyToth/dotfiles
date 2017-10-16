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

" easier esc from insert
:inoremap jj <esc>
:inoremap kk <esc>

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

" toggle paste
noremap <leader>pp :set paste!<cr>

" NERDTree shortcuts
noremap <leader>nt :NERDTreeToggle<CR>
noremap <leader>nf :NERDTreeFind<CR>

" CTRL+P
noremap <c-p> :CtrlP<CR>

" Autofold indent code with space
set foldmethod=indent
nnoremap <space> za
vnoremap <space> zf

" easier vimrc file editing
noremap <leader>ev :vsplit $MYVIMRC<cr>
noremap <leader>sv :source $MYVIMRC<cr>

augroup comments_shortcuts
	autocmd FileType javascript nnoremap <buffer> <localleader>c I// <esc>
	autocmd FileType python     nnoremap <buffer> <localleader>c I# <esc>
	autocmd FileType vim        nnoremap <buffer> <localleader>c I" <esc>
augroup END

" F2 toggle Syntastic
noremap <F2> :SyntasticToggleMode<cr>
noremap <leader><F2> :SyntasticCheck<cr>

" F8 to toggle white space
noremap <F8> :set list!<cr>

" toggle wrap
noremap <leader>tw :set wrap!<cr>

" K to grep word under cursor
nnoremap K :vimgrep /<C-R><C-W>/ **/*

" search for the nearest Makefile. once found execute make install...
let s:makefileExists = 0
function! CheckMakefile()
	echo "Current cwd is:" getcwd()
	if filereadable("Makefile")
		echo "Makefile exists"
		let s:makefileExists = 1
	elseif
		echo "Makefile doesn't exist"
		let s:makefileExists = 0
	endif
	return s:makefileExists
endfunction

function! RunMakeInCWD()
	call CheckMakefile()
	if s:makefileExists
		write
		execute "!c5 make install"
	endif
endfunction
noremap <leader>m :call RunMakeInCWD()<cr><cr>
