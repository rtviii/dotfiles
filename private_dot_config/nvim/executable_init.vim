:nnoremap K 5k
:nnoremap J 5j

:xnoremap K 5k
:xnoremap J 5j

:xnoremap <C-K> K
:xnoremap <C-J> J

:imap jj <Esc>
:imap kk <Esc>

:lua require('init')

source $HOME/.config/nvim/rnvimr.vim

hi Comment cterm=italic
set clipboard+=unnamedplus

"----------------------------------------------------------------------
" Mitchell Hashimoto's config
"----------------------------------------------------------------------
" checks if your terminal has 24-bit color support
"

scriptencoding utf-8
set encoding=utf-8

let mapleader=";"         " The <leader> key
set textwidth=80
set wrap linebreak nolist
set autoread              " Reload files that have not been modified
set backspace=2           " Makes backspace behave like you'd expect

"set colorcolumn=80        " Highlight 80 character limit
set hidden                " Allow buffers to be backgrounded without being saved
set laststatus=2          " Always show the status bar
set list                  " Show invisible characters
"set listchars=tab:›\ ,eol:¬,trail:⋅ "Set the characters for the invisibles
"set number
set ruler                 " Show the line number and column in the status bar
set t_Co=256              " Use 256 colors
set scrolloff=999         " Keep the cursor centered in the screen
set showmatch             " Highlight matching braces
set showmode              " Show the current mode on the open buffer
set splitbelow            " Splits show up below by default
set splitright            " Splits go to the right by default


" Customize session options. Namely, I don't want to save hidden and  unloaded buffers or empty windows.
"
set sessionoptions="curdir,folds,help,options,tabpages,winsize"
syntax on " Enable filetype detection by syntax

" Search settings
set hlsearch   " Highlight results
set ignorecase " Ignore casing of searches
set incsearch  " Start showing results as you type
set smartcase  " Be smart about case sensitivity when searching
set expandtab     " Expand tabs to the proper type and size
set tabstop=4     " Tabs width in spaces
set softtabstop=4 " Soft tab width in spaces
set shiftwidth=4  " Amount of spaces when shifting

" Tab completion settings
set wildmode=list:longest     " Wildcard matches show a list, matching the longest first
set wildignore+=.git,.hg,.svn " Ignore version control repos
set wildignore+=*.6           " Ignore Go compiled files
set wildignore+=*.pyc         " Ignore Python compiled files
set wildignore+=*.rbc         " Ignore Rubinius compiled files
set wildignore+=*.swp         " Ignore vim backups
set background=dark


"----------------------------------------------------------------------
" Autocommands
"----------------------------------------------------------------------
" Clear whitespace at the end of lines automatically
autocmd BufWritePre * :%s/\s\+$//e
autocmd BufWinEnter * set foldlevel=999999

let g:neovide_cursor_trail_length=0.02
let g:neovide_touch_drag_timeout=0.02
let g:neovide_cursor_animation_length=0.02
let g:neovide_cursor_trail_length=0.02


set completeopt=menuone,noinsert,noselect
set shortmess+=c
set updatetime=300
nnoremap <silent> g[ <cmd>lua vim.diagnostic.goto_prev()<CR>
nnoremap <silent> g] <cmd>lua vim.diagnostic.goto_next()<CR>

colorscheme nord
