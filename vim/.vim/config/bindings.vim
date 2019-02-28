let mapleader = ','

"--- quickfix
map ]c :lnext<CR>
map [c :lprevious<CR>

"--- NERDTree
map <C-n> :NERDTreeToggle<CR>

"--- gitgutter
nmap ]hc <Plug>GitGutterNextHunk
nmap [hc <Plug>GitGutterPrevHunk
nmap <Leader>hs <Plug>GitGutterStageHunk
nmap <Leader>hu <Plug>GitGutterUndoHunk

"--- fzf
noremap <c-p> :FZF<cr>
