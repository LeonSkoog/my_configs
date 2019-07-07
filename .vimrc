" disable vi compatibility (emulation of old bugs)
set nocompatible

" turn syntax highlighting on
syntax on
set t_Co=256

" turn line numbers on
set number

" turn true color power
"set termguicolors

" set UTF-8 encoding
set enc=utf-8
set fenc=utf-8
set termencoding=utf-8
set langmenu=en_US.UTF-8        " sets the language of the menu (gvim)

" use indentation of previous line
set autoindent

" use intelligent indentation for C
set smartindent

" configure tabwidth and insert spaces instead of tabs
set smarttab      " Turn on smart tabs
set expandtab      " Exapnd tabs to spaces
set tabstop=4   " TAB becomes X spaces
set softtabstop=4  " TAB becomes X spaces in Vim operations
set shiftwidth=4  " Number of spaces for indentation

" wrap lines at 120 chars. 80 is somewaht antiquated with nowadays displays.
set textwidth=120
set wrap

" No annoying sound on errors
set noerrorbells
set novisualbell
set t_vb=
set tm=500
set guioptions-=T  "remove toolbar
set guifont=DejaVuSansMono\ Nerd\ Font\ Mono

" don't show matching braces
set noshowmatch

" don't show cursor position, vim-airline plugin will handle it
set noruler

" remap leader key
let mapleader = ","

" edit vimrc
nnoremap <leader>ve :vsplit $MYVIMRC<CR>
" reload vimrc
nnoremap <leader>vr :source $MYVIMRC<CR>

" move up/down even for wraped lines
nnoremap j gj
nnoremap k gk

" Disable highlight when <leader><cr> is pressed
map <silent> <leader><cr> :noh<cr>

" Enable filetype plugins
filetype plugin on
filetype indent on

" For plugins to load correctly
filetype plugin indent on

" improve rendering
set ttyfast
set lazyredraw

" Search options
set hlsearch    " Highlight search results
set incsearch   " Turn on incremental searching

set hidden      " Switch buffer without saving

set noerrorbells visualbell t_vb=           "disable bells
autocmd GUIEnter * set visualbell t_vb=     "disable bells

set wildmode=longest,list,full  "bash like Tab completion
set wildmenu

"==== VIM-PLUG - plugin manager ====
call plug#begin('~/.vim/plugged')

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

Plug 'scrooloose/nerdcommenter'
Plug 'jiangmiao/auto-pairs'
Plug 'scrooloose/nerdtree'

Plug 'morhetz/gruvbox'

" Initialize plugin system
call plug#end()
"===================================
"=== Auto-pairs settings ===========
let g:AutoPairsMapBS = 0
let g:AutoPairsMapCh = 0
let g:AutoPairsMapSpace = 0
let g:AutoPairsFlyMode = 0
"===================================

"=== Colors ========================
colorscheme gruvbox
let g:gruvbox_contrast_dark='hard'
set background=dark    " Setting dark mode
"===================================
"
"=== Nerdcommenter settings ========
let g:NERDSpaceDelims = 1
let g:NERDDefaultAlign = 'left'
let g:NERDCommentEmptyLines = 1
"===================================

"=== Nerd Tree =====================
noremap <C-n> :NERDTreeToggle<CR>
"===================================

"=== VIM-AIRLINE ===================
let g:airline_powerline_fonts = 1   "enable unicode
"===================================
"
"=== MAN ==========================
runtime! ftplugin/man.vim
"===================================

