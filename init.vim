autocmd BufRead,BufNewFile *.tmpl set filetype=go

" general settings
set dir=/tmp/
set relativenumber 
set number
set nowrap
set textwidth=90

set notermguicolors
hi TabLine ctermfg=black ctermbg=gray
hi TabLineSel ctermfg=black ctermbg=white
"set TabLineFill
hi StatusLine ctermfg=black ctermbg=white

" tab settings
set autoindent
set tabstop=4
set shiftwidth=4
set noexpandtab

" highlighting fallbacks
hi Comment ctermfg=green

" highlighting - usual / default
hi Error  NONE

hi Normal ctermfg=white
hi LineNr ctermfg=brown
hi Search ctermbg=39
hi Todo   ctermfg=red ctermbg=None

hi Function   ctermfg=None
hi Comment    ctermfg=83
hi Constant   ctermfg=214
hi String     ctermfg=214
hi Special    ctermfg=225
hi Statement  ctermfg=51 cterm=None guifg=NvimLightCyan
hi Identifier ctermfg=51 cterm=None guifg=NvimLightCyan
hi Type       ctermfg=141

" hi shQuote ctermfg=214
" hi goBuiltins ctermfg=50

" highlighting - desert garden
hi Normal ctermfg=white
hi LineNr ctermfg=8 "darkgray

hi Function   ctermfg=None
hi Comment    ctermfg=154 "10, green, 83
hi Constant   ctermfg=214
hi String     ctermfg=214
hi Special    ctermfg=213 "206 200 177
hi Statement  ctermfg=208 cterm=None
hi Identifier ctermfg=51 guifg=NvimLightCyan "14
hi Type       ctermfg=51 guifg=NvimLightCyan

" greens: 70, 76, 82, 118, 148, 154
"
" brown: 172, 208
" dark brown: 130, 136, 166, 202
" light brown: 178
"
" blues: 30-33, 37-39*, 43-45*, 50-52, 66-69, 73-75, 79-81, 86, 87, 109-111, 115-117,
" purples: 5, 13, 60, 91, 96, 103, 111, 127, 132, 139, 146, 147, 165, 169, 176, 200, 206, 218, 225
