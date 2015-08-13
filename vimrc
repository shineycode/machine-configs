
execute pathogen#infect()

syntax on
syntax enable
filetype indent plugin on

""" Begin Airline configuration
let g:airline_theme = 'sol' "solarized'
let g:airline_powerline_fonts = 1

" Enable support for tablines
let g:airline#extensions#tabline#enabled = 1

" Enable list style for directory listing
"
let g:netrw_liststyle=1

" Enable airline support for syntastic
let g:airline#extensions#syntastic#enabled = 1

" Enable airline support for vim-gitgutter
let g:airline#extensions#hunks#enabled = 1
let g:airline#extensions#hunks#hunk_symbols = ['+', '~', '-']

" vim-airline doesn't appear until you create a new split
set laststatus=2

set nocompatible
set tabstop=4
set softtabstop=4 """ <shiney>
set shiftwidth=4
set nocindent
"""set nosmartindent
set smartindent
set autoindent
set bs=indent,eol,start
set hls is ic scs
set gdefault
set ruler
set textwidth=72
""" Automatically wrap text as close to tw characters as white space allows 
""" without exceeding the character limit. This option wraps at word boundaries.
set formatoptions+=t

set novisualbell
set formatoptions=rcn1
set equalalways
set autoread
set number
set foldlevelstart=99
set foldmethod=indent
set foldnestmax=10
set nofoldenable
set foldlevel=1

""" Copy to system clipboard
set clipboard=unnamed

""" Enable mouse
set mouse=a

""" Enable airline plugin
let g:airline#extensions#tabline#enabled = 1
""" define straight tabs
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'

""" Commit message formatting
autocmd Filetype gitcommit setlocal spell textwidth=72

set guifont=Monaco:h12

set expandtab

""" Autowrap git commit messages
au FileType gitcommit set tw=72

"""filetype indent plugin on

set background=dark
colorscheme solarized
""" colorscheme distinguished

