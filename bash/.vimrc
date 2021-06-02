:syntax on
:filetype plugin on

:set nocompatible

:colo murphy
:highlight ColorColumn term=reverse cterm=NONE ctermfg=NONE ctermbg=4 gui=NONE guifg=NONE guibg=Black

:set noerrorbells
:set termguicolors
:set scrolloff=8
:set nowrap
:set colorcolumn=80,100
:set wildmenu

:set relativenumber
:set nu

:set tabstop=2 softtabstop=2
:set shiftwidth=2
:set expandtab
:set smartindent

:set nohlsearch
:set incsearch

:set hidden
:set noswapfile
:set nobackup
:set undodir=~/.vim/undodir
:set undofile

:autocmd FileType javascript setlocal shiftwidth=2 tabstop=4 softtabstop=4
