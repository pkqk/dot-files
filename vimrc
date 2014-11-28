set nocompatible
set encoding=utf-8
syntax enable
filetype plugin indent on
if has('gui_running')
    set background=light
    set guifont=Monaco:h12
    set guioptions-=T
else
    set background=dark
endif
colorscheme solarized

set number
set wildignore=*.pyc,.bundle/*,.vendor/*

"tab settings
set smartindent
set expandtab
set tabstop=2
set shiftwidth=2
set softtabstop=2
set textwidth=0
set shiftround
set backspace=eol,start,indent

set nowrap

"search settings
set incsearch
set ignorecase
set smartcase
set showmatch

set cursorline
set ruler

set laststatus=2
function! CurDir()
  let curdir = substitute(getcwd(), $HOME, "~", "g")
  return curdir
endfunction
"Format the statusline
set statusline=\ %F\ cwd:\ %{CurDir()}\ %=%{fugitive#head()}\ %=line:\ %l/%L:%v\ 

set wildmode=longest,list,full
set wildmenu

set completeopt+=longest

"turn off all beeping
set noerrorbells
set visualbell t_vb=

call pathogen#infect()

map <Leader>t :NERDTreeTabsToggle<CR>
map <Leader>f :NERDTreeFind<CR>
map <Leader>c :CtrlPClearCache<CR>

nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" center cursor line in middle of screen
nmap <space> zz
nmap n nzz
nmap N Nzz
