imap <c-x><c-k> <plug>(fzf-complete-word)
imap <c-x><c-f> <plug>(fzf-complete-path)
imap <c-x><c-j> <plug>(fzf-complete-file-ag)
imap <c-x><c-l> <plug>(fzf-complete-line)

" Key Bindings
source ~/.vim/config/bindings.vim

" Appearance {{{
syntax on
colorscheme inori
" }}}

" Plugin Configuration {{{

" vim-go {{{
let g:go_metalinter_autosave = 1
let g:go_fmt_command = "goimports"
" }}}

" tagbar {{{
nnoremap <silent> <Leader>b :TagbarToggle<CR>
" }}}

" vim-airline {{{
let g:airline_detect_spell=0
let g:airline_left_alt_sep=''
let g:airline_left_sep='▓▒░'
let g:airline_powerline_fonts=1
let g:airline_right_alt_sep=''
let g:airline_right_sep='░▒▓'
let g:airline_skip_empty_sections = 1
let g:airline#extensions#hunks#enabled=0
let g:airline#extensions#neomake#enabled=1
let g:airline#extensions#tabline#enabled=1
let g:airline#extensions#tabline#buffer_min_count=2
let g:airline#extensions#tabline#buffer_nr_format='%s '
let g:airline#extensions#tabline#buffer_nr_show=1
let g:airline#extensions#tabline#formatter = 'unique_tail'
let g:airline#extensions#tabline#left_alt_sep=''
let g:airline#extensions#tabline#left_sep=' '
let g:airline#extensions#tabline#show_close_button=0
let g:airline#extensions#tabline#show_tab_type=0
let g:airline#extensions#tabline#tab_min_count=2
let g:airline#extensions#whitespace#enabled=1
let g:airline#extensions#whitespace#symbol='µ'
let g:airline#parts#ffenc#skip_expected_string='utf-8[unix]'

let g:airline_theme='vice'
" }}}

" {{{ vim-terraform
let g:terraform_fmt_on_save=1
" }}}

" }}}

" fzf {{{
let g:fzf_action = {
      \ 'ctrl-s': 'split',
      \ 'ctrl-v': 'vsplit'
      \ }

augroup fzf
  autocmd!
  autocmd! FileType fzf
  autocmd  FileType fzf set laststatus=0 noshowmode noruler
    \| autocmd BufLeave <buffer> set laststatus=2 showmode ruler
augroup END
" }}}

" Plugin Configuration End }}}

" Tabs {{{
set tabstop=2
set shiftwidth=2
set expandtab
set smarttab

autocmd BufWritePre * %s/\s\+$//e
" }}}

" Line Numbering {{{
set number relativenumber
" }}}

" Folding {{{
set foldmethod=marker
" }}}
