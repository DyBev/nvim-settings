set nocompatible
filetype on
filetype plugin on
filetype indent on
syntax on
set cursorline
set incsearch
set ignorecase
set scrolloff=15
:set nu rnu
:inoremap <Tab> <Esc>
:vnoremap <Tab> <Esc>Gv
:nnoremap <Tab> <Esc>
:cnoremap <Tab> <Esc>
let g:netrw_bufsettings = 'noma nomod nu nowrap ro nobl'

set autochdir
set list
set listchars=tab:▸·,trail:·

set autoread

set nobackup
set noswapfile
set termguicolors

colorscheme everforest

function SetSyntax()
	if match('\%1l--.*$', '\%1l')
		:set syn=GT
	endif
endfunction

:autocmd BufReadPost * call SetSyntax()
