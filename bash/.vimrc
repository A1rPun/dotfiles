:syntax on
:filetype plugin on

:set nocompatible

:highlight ColorColumn term=reverse cterm=NONE ctermfg=NONE ctermbg=4 gui=NONE guifg=NONE guibg=Black

nnoremap <C-Left> :tabprevious<CR>
nnoremap <C-Right> :tabnext<CR>

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
:set list
:set listchars=space:·
:set nohlsearch
:set incsearch

:set hidden
:set noswapfile
:set nobackup
:set undodir=~/.vim/undodir
:set undofile

:autocmd FileType javascript setlocal shiftwidth=2 tabstop=4 softtabstop=4
:autocmd InsertEnter * set cursorline
:autocmd InsertLeave * set nocursorline

let &t_SI = "\e[6 q"
let &t_EI = "\e[2 q"

colorscheme codedark

