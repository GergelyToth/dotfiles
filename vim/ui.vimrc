" toggle invisible characters
set listchars=tab:»\ ,eol:¬,trail:⋅,extends:❯,precedes:❮
set showbreak=↪

" make the highlighting of tabs and other non-text less annoying
highlight SpecialKey ctermbg=none ctermfg=8
highlight NonText ctermbg=none ctermfg=8

" show matching brackets
set showmatch
set mat=2

" add extra margin to left
set foldcolumn=1

" keep three lines of code between edge of the screen
set scrolloff=3

" color the 80'th column
set colorcolumn=80

" set title for terminal
set title

" NERDTress File highlighting
function! NERDTreeHighlightFile(extension, fg, bg, guifg, guibg)
	exec 'autocmd filetype nerdtree highlight ' . a:extension .' ctermbg='. a:bg .' ctermfg='. a:fg .' guibg='. a:guibg .' guifg='. a:guifg
	exec 'autocmd filetype nerdtree syn match ' . a:extension .' #^\s\+.*'. a:extension .'$#'
endfunction

call NERDTreeHighlightFile('jade',   'green',   'none', 'green',   '#151515')
call NERDTreeHighlightFile('ini',    'yellow',  'none', 'yellow',  '#151515')
call NERDTreeHighlightFile('md',     'blue',    'none', '#3366FF', '#151515')
call NERDTreeHighlightFile('yml',    'yellow',  'none', 'yellow',  '#151515')
call NERDTreeHighlightFile('config', 'yellow',  'none', 'yellow',  '#151515')
call NERDTreeHighlightFile('conf',   'yellow',  'none', 'yellow',  '#151515')
call NERDTreeHighlightFile('json',   'yellow',  'none', 'yellow',  '#151515')
call NERDTreeHighlightFile('html',   'yellow',  'none', 'yellow',  '#151515')
call NERDTreeHighlightFile('styl',   'cyan',    'none', 'cyan',    '#151515')
call NERDTreeHighlightFile('css',    'cyan',    'none', 'cyan',    '#151515')
call NERDTreeHighlightFile('coffee', 'Red',     'none', 'red',     '#151515')
call NERDTreeHighlightFile('js',     'Red',     'none', '#ffa500', '#151515')
call NERDTreeHighlightFile('php',    'Magenta', 'none', '#ff00ff', '#151515')

set background=dark
" use 256 colors when possible
if &term =~? 'mlterm\|xterm\|screen-256color\|xterm-256color\|gnome-256color'
	let t_Co=256
	colorscheme monokain
else
    colorscheme elflord
endif

" highlight git gutter signs for more visibility
highlight clear SignColumn
highlight GitGutterAdd ctermbg=green ctermfg=black
highlight GitGutterChange ctermbg=yellow ctermfg=black
highlight GitGutterChange ctermbg=red ctermfg=black
highlight GitGutterChangeDelete ctermbg=yellow ctermfg=black

" airline symbol fallbacks
let g:airline_powerline_fonts = 1
let g:airline_theme='dark'

