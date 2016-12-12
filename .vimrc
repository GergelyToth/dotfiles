set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" git repos on your local machine (i.e. when working on your own plugin)
Plugin 'https://github.com/vim-syntastic/syntastic'
Plugin 'https://github.com/tpope/vim-fugitive'
Plugin 'https://github.com/scrooloose/nerdtree'
Plugin 'https://github.com/ctrlpvim/ctrlp.vim'
Plugin 'bling/vim-airline'
Plugin 'valloric/youcompleteme'
Plugin 'Raimondi/delimitMate' " automatic closing of quotes, parenthesis, brackets, etc.
" Plugin 'https://github.com/joshdick/onedark.vim'

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

" General
set history=500
filetype plugin on
filetype indent on

" autoread files when changed from outside
set autoread

" set line numbers
set nu
set nuw=4
set relativenumber

" highlight current line
set cursorline

" treat all numbers as decimals
set nrformats=

" nice background
if $COLORTERM == 'gnome-terminal'
	set t_Co=256
endif
" colorscheme peacock
set background=dark
syntax on

set encoding=utf8
set ffs=unix,dos,mac

" make the highlighting of tabs and other non-text less annoying
highlight SpecialKey ctermbg=none ctermfg=8
highlight NonText ctermbg=none ctermfg=8

" toggle invisible characters
set list
set listchars=tab:»\ ,eol:¬,trail:⋅,extends:❯,precedes:❮
set showbreak=↪

" highlight conflicts
match ErrorMsg '^\(<\|=\|>\)\{7\}\([^=].\+\)\?$'

" UI
" turn on the wild menu
set wildmenu

" always show current position

" height of the command bar
set cmdheight=2

" buffer becomes hidden when it is abandoned
set hid

" congigure backspace to be normal
set backspace=eol,start,indent
set whichwrap+=<,>,h,l

" ignore case when searching
set ignorecase

" when searching try to be smart about cases
set smartcase

" highlight search results
set hlsearch

" search to act like in moder browsers
set incsearch

" performance
set lazyredraw

" regular expressions magic
set magic

" show matching brackets
set showmatch
set mat=2

" no annoying sound errors
set noerrorbells
set novisualbell
set t_vb=
set tm=500

" add extra margin to left
set foldcolumn=1

" keep three lines of code between edge of the screen
set scrolloff=3

" backup
" turn backup off
set nobackup
set nowb
set noswapfile

" Text & Tabs & Indent
set smarttab
set shiftwidth=4
set tabstop=4

" linebreak on 500 chars
set lbr
set tw=500

set ai " auto indent
set si " smart indent
set wrap " wrap lines

" Shortcuts
" map leader to be ','
let mapleader = ","
let g:mapleader = ","

" fast saving
nmap <leader>w :w!>cr>

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

" Move a line of text using ALT+[jk] or Command+[jk] on mac
nmap <M-j> mz:m+<cr>`z
nmap <M-k> mz:m-2<cr>`z
vmap <M-j> :m'>+<cr>`<my`>mzgv`yo`z
vmap <M-k> :m'<-2<cr>`>my`<mzgv`yo`z

" specify behaviour when switching between buffers
try
	set switchbuf=useopen, usetab, newtab
	set stal=2
catch
endtry

" Status line
" set laststatus=2
" set statusline=\ %{HasPaste()}%F%m%r%h\ %w\ \ CWD:\ %r%{getcwd()}%h\ \ \ Line:\ %l\ \ Column:\ %c

" Delete trailing white space on save, useful for Python and CoffeeScript ;)
func! DeleteTrailingWS()
	exe "normal mz"
	%s/\s\+$//ge
	exe "normal `z"
endfunc
autocmd BufWrite *.py :call DeleteTrailingWS()
autocmd BufWrite *.coffee :call DeleteTrailingWS()

" Spell checking
map <leader>ss :setlocal spell!<cr>

map <leader>sn ]s
map <leader>sp [s
map <leader>sa zg
map <leader>s? z=

" Helper functions
function! CmdLine(str)
	exe "menu Foo.Bar :" . a:str
	emenu Foo.Bar
	unmenu Foo
endfunction 

function! HasPaste()
	if &paste
		return 'PASTE MODE '
	endif
	return ''
endfunction

" NERDTree shortcuts
map <leader>nt :NERDTreeToggle<CR>
map <leader>nf :NERDTreeFind<CR>

" Start NERDTree whenever vim starts
autocmd vimenter * NERDTree

" NERDTree to start on opening directory, automatically
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif

" NERDTress File highlighting
function! NERDTreeHighlightFile(extension, fg, bg, guifg, guibg)
	exec 'autocmd filetype nerdtree highlight ' . a:extension .' ctermbg='. a:bg .' ctermfg='. a:fg .' guibg='. a:guibg .' guifg='. a:guifg
	exec 'autocmd filetype nerdtree syn match ' . a:extension .' #^\s\+.*'. a:extension .'$#'
endfunction

call NERDTreeHighlightFile('jade', 'green', 'none', 'green', '#151515')
call NERDTreeHighlightFile('ini', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('md', 'blue', 'none', '#3366FF', '#151515')
call NERDTreeHighlightFile('yml', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('config', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('conf', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('json', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('html', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('styl', 'cyan', 'none', 'cyan', '#151515')
call NERDTreeHighlightFile('css', 'cyan', 'none', 'cyan', '#151515')
call NERDTreeHighlightFile('coffee', 'Red', 'none', 'red', '#151515')
call NERDTreeHighlightFile('js', 'Red', 'none', '#ffa500', '#151515')
call NERDTreeHighlightFile('php', 'Magenta', 'none', '#ff00ff', '#151515')

" CTRL+P
map <c-p> :CtrlP<CR>

set wildignore+=*/tmp/*,*.so,*.swp,*.zip

" Syntastic default settings
" set statusline+=%#warningmsg#
" set statusline+=%{SyntasticStatuslineFlag()}
" set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" Autofold indent code with space
set foldmethod=indent
nnoremap <space> za
vnoremap <space> zf

" airline options
" let g:airline_powerline_fonts=1
" let g:airline_left_sep=''
" let g:airline_right_sep=''
" let g:airline#extensions#tabline#enabled = 1 " enable airline tabline
" let g:airline#extensions#tabline#tab_min_count = 2 " only show tabline if tabs are being used (more than 1 tab open)
" let g:airline#extensions#tabline#show_buffers = 0 " do not show open buffers in tabline
" let g:airline#extensions#tabline#show_splits = 0
