runtime! archlinux.vim


" GENERAL 
set relativenumber
set autoindent
set tabstop=2
set shiftwidth=2
set scrolloff=5
set signcolumn=number "the '>>' in ALE

autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o


" SEARCHING
set incsearch
set ignorecase 
set hlsearch 

augroup remember_folds
	autocmd!
	autocmd BufWinLeave * mkview
	autocmd BufWinEnter * silent! loadview
augroup END


" PLUGINS
" ALE
let g:ale_lint_on_text_changed = 'normal'
let g:ale_lint_on_insert_leave = 1

" matchparen
let loaded_matchparen = 1


" HIGHLIGHT CONTRAST PROBLEMS
hi Folded cterm=Bold ctermfg=19
hi MatchParen cterm=Bold ctermfg=19
hi ALEWarning cterm=underline ctermfg=LightRed
hi ALEError cterm=underline ctermfg=LightRed
hi Search cterm=Bold ctermfg=19 ctermbg=230

" CURSOR
" hi Cursor cterm=Bold 
" hi iCursor cterm=Bold 
" hi vCursor cterm=Bold 
" hi cCursor cterm=Bold 
" hi vCursor cterm=Bold 


" ESCAPE REMAP
inoremap kj <esc>
vnoremap kj <esc>
cnoremap kj <C-C>


" FILETYPE SPECIFIC
filetype plugin on
filetype indent on
syntax on

" BRACKET COMPLETION
"inoremap { {}<Esc>ha
"inoremap ( ()<Esc>ha
"inoremap [ []<Esc>ha
"inoremap " ""<Esc>ha
"inoremap ' ''<Esc>ha
"inoremap ` ``<Esc>ha
"inoremap < <><Esc>ha
