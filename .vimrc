set shell=/bin/zsh " uses zsh shell

set nocompatible " default setup for vim

" backup options
set nobackup
set nowritebackup
set noswapfile

set history=100 " how many commands are stored in the history

set ruler " always show current position

" set syntax highlighting if possible
if (&t_Co > 2 || has("gui_running")) && !exists("syntax_on")
  syntax on
endif

set tabstop=4 " how many columns a tab includes
set shiftwidth=4 " controls columns of reindent operator and C-Style Indention
" set expandtab " to get spaces instead of tabs

set number " shows row numbers at the left of the screen
set numberwidth=5 " always uses 5 columns to display the line number

" set showmatch " briefly jumps to  matching bracket, if it is on screen

set ai " auto indent
set si " smart indent
" set paste " to disable automatic indention temporarily

" text wrapping options
set wrap

set encoding=utf8 " set file encoding

" status line configuration
set laststatus=2
set statusline=\ %{HasPaste()}%F%m%r\ \ Line:\ %l\ \ Column:\ %c\ \ %p%%\ \ Date:\ %{strftime(\"%d/%m/%y\ -\ %H:%M\")}\ \ 
" to display current working directory: 'CWD:\ %r%{getcwd()}\ \ '

function! RemoveTrailingWhitespaces()
  "Save last cursor position
  let l = line(".")
  let c = col(".")

  %s/\s\+$//ge

  call cursor(l,c)
endfunction

function! HasPaste()
    if &paste
        return 'PASTE MODE  '
    endif
    return ''
endfunction
