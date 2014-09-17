" -- Compats -- "

set nocompatible		
set encoding=utf-8	

" -- Plugins -- "

filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'
Bundle 'w0ng/vim-hybrid'
Bundle 'tpope/vim-surround'
Bundle 'tpope/vim-fugitive'

" -- File settings -- "

filetype plugin indent on
syntax on " Enable syntax coloring

" -- Gentoo settings -- "
let g:leave_my_textwidth_alone = 1

" -- Color settings -- "

set t_Co=256 " Set hybrid to 256 colors
let g:hybrid_use_Xresources = 1 " Set hybrid to use X colors
colorscheme hybrid " Enable hybrid color scheme

" -- Tab settings -- "

set tabstop=2
set shiftwidth=2
set softtabstop=2
set autoindent " Continue indent of previous line 

" -- Search settings -- "

set ruler " Show ruler
set showcmd " Show command at bottom
"set showmatch " Show matching brackets
set wildmenu " Enhance commandline completion
set hlsearch " Highlight search results
set incsearch " Search while typing

" -- Fold settings -- "

set foldignore= " Enable folding for everything
set foldmethod=marker " Use marker to show collapsed code
set foldlevelstart=99 " Open all folds by default

" -- General settings --

set wrap " Enable word wrap
set title " Set filename in window title
set hidden
set ttyfast
set mouse=a " Enable mouse for all modes
set linebreak
set lazyredraw
set textwidth=0
set backspace=2
set laststatus=2
set completeopt-=preview
set fillchars+=vert:\

" -- Diff settings -- "

if &diff
set diffopt=filler,foldcolumn:0
endif

" -- Mappings -- "

" Map leader
let mapleader = ','

" Exit insert mode
inoremap jj <esc>

" Toggle fold
nnoremap <space> za

" Toggle spellcheck
nnoremap <leader>s :set spell!<CR>

" Toggle hlsearch for current results
nnoremap <leader><leader> :nohlsearch<CR>

" Insert newline in normal mode
map <S-Enter> O<Esc>
map <CR> o<Esc>

" Search for trailing whitespace
nnoremap <leader>w /\s\+$<CR>

" Toggle method used for folding
nnoremap <leader>m :call ToggleFoldMethod()<CR>

" Paste mode for terminals
nnoremap <F2> :set invpaste paste?<CR>
set pastetoggle=<F2>

" Insert current date and time
nnoremap <leader>d "=strftime("%d %b, %Y %X")<CR>p
nnoremap <leader>D "=strftime("%d %b, %Y %X")<CR>P

" Shortcut for Tabularize
nnoremap <leader>t :Tabularize /
vnoremap <leader>t :Tabularize /

" Search and open buffer, files, recent
nnoremap <leader>b :CtrlPBuffer<CR>
nnoremap <leader>f :CtrlP<CR>
nnoremap <leader>r :CtrlPMRUFiles<CR>

" -- Functions -- "

function! ToggleFoldMethod()
if &foldmethod == 'indent'
  set foldmethod=marker
  echo "foldmethod=marker"
else
  set foldmethod=indent
  echo "foldmethod=indent"
endif
endfunction
