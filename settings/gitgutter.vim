" gitgutter
let g:gitgutter_preview_win_floating = 1
" un map all keys bindings of gitgutter then will map it again
let g:gitgutter_map_keys = 0
" nmap ght <Plug>(GitGutterToggle) 
nmap ghp <Plug>(GitGutterPreviewHunk) 
nmap ghu <Plug>(GitGutterUndoHunk)   
nmap ]c <Plug>(GitGutterNextHunk)
nmap [c <Plug>(GitGutterPrevHunk)

" nmap ghs <Plug>(GitGutterStageHunk) 
" xmap ghS <Plug>(GitGutterStageHunk)
" xmap nc <Plug>(GitGutterTextObjectOuterVisual)
" omap nc <Plug>(GitGutterTextObjectOuterPending)
" xmap n% <Plug>(MatchitVisualTextObject)

" /gitgutter


