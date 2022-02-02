" vim-sneak use to move quick to any word within the screen from current
" cursor position with pattern `s{character}{character}` example: stv, sau...
let g:sneak#label = 1
" case insensitive sneak
let g:sneak#use_ic_scs = 1
" immediately move to the next instance of search, if you move the cursor sneak is back to default behavior
let g:sneak#s_next = 1
" remap so I can use , and ; with f and t
" map gS <Plug>Sneak_,
" map gs <Plug>Sneak_;
"/vim-neak

