execute pathogen#infect()

syntax on
set background=dark
set tabstop=8
set autoindent
set ruler

"if has("multi_byte")
"	if &termencoding == ""
"		let &termencoding = &encoding
"	endif
"	set encoding=utf-8
"	"setglobal bomb
"	set fileencodings=ucs-bom,utf-8,latin1
"endif

:autocmd ColorScheme * highlight ExtraWhitespace ctermbg=red guibg=red
:highlight ExtraWhitespace ctermbg=red guibg=red
" The following alternative may be less obtrusive.
:highlight ExtraWhitespace ctermbg=darkgreen guibg=lightgreen
" Try the following if your GUI uses a dark background.
:highlight ExtraWhitespace ctermbg=darkgreen guibg=darkgreen
"" Show trailing whitespace:
":match ExtraWhitespace /\s\+$/
"
"" Show trailing whitepace and spaces before a tab:
":match ExtraWhitespace /\s\+$\| \+\ze\t/
"
"" Show tabs that are not at the start of a line:
":match ExtraWhitespace /[^\t]\zs\t\+/
"
"" Show spaces used for indenting (so you use only tabs for indenting).
":match ExtraWhitespace /^\t*\zs \+/
"
":match ExtraWhitespace /\s\+\%#\@<!$/
"

" Show trailing whitepace and spaces before a tab:
:autocmd Syntax * syn match ExtraWhitespace /\s\+$\| \+\ze\t/ containedin=ALL

":au BufWinEnter * let w:m1=matchadd('Search', '\%<81v.\%>77v', -1)
":au BufWinEnter * let w:m2=matchadd('ErrorMsg', '\%>80v.\+', -1)

autocmd BufEnter *.pp set filetype=puppet
autocmd FileType puppet set tabstop=2|set shiftwidth=2|set expandtab|set softtabstop=2
"autocmd BufEnter *.pp set tabstop=2|set shiftwidth=2|set expandtab|set softtabstop=2
