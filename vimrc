set nocompatible
syntax on
filetype plugin indent on
set nowrap

set tabstop=2
set shiftwidth=2
set expandtab

set ruler
set showcmd
set incsearch
set backspace=eol,start,indent
set showmatch

set mouse=a

set hid
set nu

set laststatus=2
function! CurDir()
  let curdir = substitute(getcwd(), '/Users/adam/', "~/", "g")
  return curdir
endfunction
"Format the statusline
set statusline=\ %F%m%r%h\ %w\ \ cwd:\ %r%{CurDir()}%h\ \ \ line:\ %l/%L:%c

if has("gui_running")
  set gfn=Bitstream\ Vera\ Sans\ Mono:h14
  set macatsui
  set termencoding=macroman

  set guioptions=T
endif
