hi Identifier ctermfg=cyan cterm=italic
hi Type ctermfg=cyan cterm=underline
hi Constant ctermfg=red
hi Statement ctermfg=red
hi PreProc ctermfg=red
hi String ctermfg=yellow
hi Function ctermfg=green
syn match	cCustomParen	"(" contains=cParen
syn match	cCustomFunc	"\w\+\s*(" contains=cCustomParen
syn match	cCustomScope	"->"
syn match	cCustomClass	"\w\+\s*->" contains=cCustomScope

hi def link cCustomFunc  Function
hi def link cCustomClass Function
