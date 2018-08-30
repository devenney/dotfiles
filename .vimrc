" Key Bindings
let mapleader = ','

map <C-n> :NERDTreeToggle<CR>


" Plugins
call plug#begin('~/.vim/plugged')

  Plug 'joshdick/onedark.vim'
  Plug 'scrooloose/nerdtree'

call plug#end()


" Appearance
syntax on
colorscheme onedark

" powerline
set rtp+=/usr/local/lib/python2.7/site-packages/powerline/bindings/vim/
set laststatus=2


" Tabs
set tabstop=2
set shiftwidth=2
set expandtab
set smarttab


" Line Numbering
set number relativenumber

augroup numbertoggle
  autocmd!
  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
  autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
augroup END


" Panes
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>


" Folding
set foldenable " enable folding
set foldlevelstart=10 " open most folds by default
set foldmethod=indent
nnoremap <space> za


" Search
set incsearch
set hlsearch


" Backups
set backup
set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set backupskip=/tmp/*,/private/tmp/*
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set writebackup
