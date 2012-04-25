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

"tab settings
set smartindent
set expandtab
set tabstop=2
set shiftwidth=2
set softtabstop=2
set textwidth=79
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
set statusline=\ %F\ cwd:\ %{CurDir()}\ %=line:\ %l/%L:%v\ 

set wildmode=longest,list,full
set wildmenu

"turn off all beeping
set noerrorbells
set visualbell t_vb=

call pathogen#infect()

map <C-t> :NERDTreeToggle<CR>
