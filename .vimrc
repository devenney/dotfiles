" BACKUPS
set backup
set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set backupskip=/tmp/*,/private/tmp/*
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set writebackup

" COMPATIBILITY

"" tmux
" allows cursor change in tmux mode
if exists('$TMUX')
    let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
    let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"
else
    let &t_SI = "\<Esc>]50;CursorShape=1\x7"
    let &t_EI = "\<Esc>]50;CursorShape=0\x7"
endif

" PLUGINS

set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
  Plugin 'VundleVim/Vundle.vim'

  " USER PLUGINS BEGIN
  " USER PLUGINS END

call vundle#end()
filetype plugin indent on

" PROGRAMMING
syntax on

"" Soft Tabs
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab

"" Folds
set foldenable " enable folding
set foldlevelstart=10 " open most folds by default
set foldmethod=indent
nnoremap <space> za

" QUALITY OF LIFE

set cursorline
set lazyredraw
set showcmd
set showmatch
set wildmenu

"" Status Line
set rtp+=/usr/lib/python3.6/site-packages/powerline/bindings/vim
set laststatus=2

"" Relative Line Numbers
set relativenumber

"" Search
set incsearch
set hlsearch
set ignorecase
