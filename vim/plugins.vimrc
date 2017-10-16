" CTRL-P ignore node_modules and git
let g:ctrlp_custom_ignore = 'node_modules\|git'
set wildignore+=*/tmp/*,*.so,*.swp,*.zip

" Syntastic default settings
" set statusline+=%#warningmsg#
" set statusline+=%{SyntasticStatuslineFlag()}
" set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" not show whitespace change in gutter
let g:gitgutter_diff_args = '-b'

" fix airline
let g:airline_powerline_fonts = 1
if !exists('g:airline_symbols')
	let g:ailine_symbols = {}
endif

" UltiSnips triggers
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

let g:airline#extensions#whitespace#enabled = 0

let g:gitgutter_max_signs = 2000
