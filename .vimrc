" All system-wide defaults are set in $VIMRUNTIME/archlinux.vim (usually just
" /usr/share/vim/vimfiles/archlinux.vim) and sourced by the call to :runtime
" you can find below.  If you wish to change any of those settings, you should
" do it in this file (/etc/vimrc), since archlinux.vim will be overwritten
" everytime an upgrade of the vim packages is performed.  It is recommended to
" make changes after sourcing archlinux.vim since it alters the value of the
" 'compatible' option.

" This line should not be removed as it ensures that various options are
" properly set to work with the Vim-related packages.
"runtime! archlinux.vim

" If you prefer the old-style vim functionalty, add 'runtime! vimrc_example.vim'
" Or better yet, read /usr/share/vim/vim80/vimrc_example.vim or the vim manual
" and configure vim to your own liking!

" do not load defaults if ~/.vimrc is missing
"let skip_defaults_vim=1

"Disable mouse
set mouse=nicr
set mouse=
"set ttymouse=

set grepprg=grep\ -nh\ $*
let g:tex_flavor = "latex"

"search settings
set showmatch
set hlsearch
set incsearch

"Visual stuff
set t_CO=256
set list
set listchars=tab:\|\->
set number
set ruler
set cc=80
set wildmode=longest,list
set wildmenu
set cursorline
"set cursorcolumn
set ttyfast
set title
set noshowmode

let g:currentmode={
	\ 'n'		:	'NORMAL',
	\ 'v'		:	'VISUELL',
	\ 'V'		:	'VZEILE',
	\ "\<C-V>"	:	'VBLOCK',
	\ 'i'		:	'EINFÜGEN',
	\ 'R'		:	'ERSETZEN',
	\ 'Rv'		:	'VERSETZEN',
	\ 'c'		:	'KOMMANDO',
	\}

"set statusline=%F%m%r%h%w%=(%{&ff}/%Y)\ (line\ %l\/%L,\ col\ %c)\
highlight StatuslineFilename ctermfg=Black ctermbg=Cyan
highlight StatuslineMode ctermfg=Black ctermbg=Red
highlight StatuslineLineNr ctermfg=White ctermbg=Black
highlight StatuslineClear ctermbg=NONE

set statusline=
"set statusline+=\ %{mode()}
set statusline+=%#StatuslineMode#
set statusline+=\[%{toupper(g:currentmode[mode()])}\]
set statusline+=%#StatuslineFilename#
set statusline+=\ %.40F
set statusline+=%m\ 
set statusline+=%#StatuslineClear#
set statusline+=%=
set statusline+=%#StatuslineLineNr#
set statusline+=\ \[HEX=0x%06B\]
set statusline+=\ %{&fileencoding?&fileencoding:&encoding}
set statusline+=\[%{&fileformat}\]
set statusline+=\ %03p%%
set statusline+=\ %03l:%03L:%03c
"set statusline+=\

"File encoding
set encoding=utf-8
set fileencoding=utf-8
set fileencodings=utf-8

"Indent settings
filetype plugin indent on
set tabstop=4
set shiftwidth=4
set backspace=indent,eol,start
syntax enable

set noswapfile

"Colour settings
"set background=light "light theme
"colorscheme morning "light theme
highlight Comment ctermfg=6
highlight LineNr ctermfg=11
highlight cCommentString ctermfg=6
highlight cComment ctermfg=6
hi SpecialKey ctermfg=grey
"set background=dark

"Plugins
"call plug#begin()
"Plug 'neoclide/coc.nvim', {'branch': 'release'}
"call plug#end()
