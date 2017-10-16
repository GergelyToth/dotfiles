" GENERAL
"
syntax on
filetype plugin indent on

" autoread files when changed from outside
set autoread

" set line numbers
set number
set numberwidth=4
set relativenumber
set cursorline

" show statusbar
set laststatus=2
set cmdheight=2

" treat all numbers as decimals
set nrformats=

set encoding=utf8
set fileformats=unix,dos,mac

" turn on the wild menu
set wildmenu

" buffer becomes hidden when it is abandoned
set hidden

" keep more history
set history=100

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

" turn backup off
set nobackup
set nowritebackup
set noswapfile

" Text & Tabs & Indent
set smarttab
set shiftwidth=4
set tabstop=4
set autoindent
set smartindent
set wrap

" linebreak on 500 chars
set linebreak
set textwidth=500

" specify behaviour when switching between buffers
try
	set switchbuf=useopen, usetab, newtab
	set showtabline=2
catch
endtry

" delete trailing white space on save
autocmd BufWritePre * :%s/\s\+$//e

" autocomplete configuration
" these settings will pull keywords from current file, other buffers(closed or
" still open), and from the current tags file. More details in :h 'complete'
set complete=.,b,u,]

" turn on the wild menu
set wildmenu

" zsh type of replacing text
" :h 'wildmode'
set wildmode=longest,list:longest

" show a menu and if available, any additional tips
" :h 'completeopt'
set completeopt=menu,preview

augroup filetype_vim
    autocmd!
    autocmd FileType vim setlocal foldmethod=marker
augroup END
