autocmd BufRead,BufNewFile *.tmpl set filetype=go

" general settings
set dir=/tmp/
set relativenumber 
set number
set nowrap
set laststatus=0
set textwidth=90

set notermguicolors
hi TabLine ctermfg=black ctermbg=gray
hi TabLineSel ctermfg=black ctermbg=white
"set TabLineFill

" tab settings
set autoindent
set tabstop=4
set shiftwidth=4
set noexpandtab

" highlighting fallbacks
hi Comment ctermfg=green

" highlighting
hi Error  NONE
hi Normal ctermfg=white
hi LineNr ctermfg=brown
hi Search ctermbg=39
hi Todo   ctermfg=red ctermbg=None

hi Function   ctermfg=None
hi Comment    ctermfg=83
hi String     ctermfg=214
hi Constant   ctermfg=214
hi Special    ctermfg=225
hi Statement  ctermfg=51 cterm=None guifg=NvimLightCyan
hi Identifier ctermfg=51 cterm=None guifg=NvimLightCyan
hi Type       ctermfg=141

" hi shQuote ctermfg=214
" hi goBuiltins ctermfg=50

" blues: 30-33, 37-39*, 43-45*, 50-52, 66-69, 73-75, 79-81, 86, 87, 109-111, 115-117,
" purples: 5, 13, 60, 91, 96, 103, 111, 127, 132, 139, 146, 147, 165, 169, 176, 200, 206, 218, 225
