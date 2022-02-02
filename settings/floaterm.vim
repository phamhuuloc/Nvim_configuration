"Floaterm is the termimal popup while using vim, we can use to check git... config
let g:floaterm_gitcommit='floaterm'
let g:floaterm_keymap_toggle = '<leader>tt'
let g:floaterm_keymap_next   = '<leader>tn'
let g:floaterm_keymap_prev   = '<leader>tp'
let g:floaterm_keymap_new    = '<leader>to'
let g:floaterm_keymap_kill ='<leader>tk'

  
let g:floaterm_autoinsert=1
let g:floaterm_width=0.8
let g:floaterm_height=0.8
let g:floaterm_wintitle=0
let g:floaterm_autoclose=1
" Set color
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Hotkey to manage terminals
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" " Open a new terminal 
" nnoremap   <silent>   <leader>to    :FloatermNew<CR>
" tnoremap   <silent>   <leader>to    <C-\><C-n>:FloatermNew<CR>

" " Kill current terminal 
" nnoremap <silent> 	<leader>tk 		:FloatermKill<CR>:FloatermPrev<CR>
" tnoremap <silent> 	<leader>tk 		<C-\><C-n>:FloatermKill<CR>:FloatermPrev<CR>

" " Navigation next and previous terminal 
" nnoremap <silent> 	<leader>tn 		:FloatermNext<CR>
" tnoremap <silent> 	<leader>tn 		<C-\><C-n>:FloatermNext<CR>
" nnoremap <silent> 	<leader>tp 		:FloatermPrev<CR>
" tnoremap <silent> 	<leader>tp 		<C-\><C-n>:FloatermPrev<CR>

" " Toggle terminal
" " nnoremap <silent> 	<leader>tt 		:FloatermToggle<CR>
" " tnoremap <silent> 	<leader>tt 		<C-\><C-n>:FloatermToggle<CR>
" " Focus terminal 
" nnoremap <silent> 	<leader>tf 		<C-\><C-n><C-W><Left>
" tnoremap <silent> 	<leader>tf 		<C-\><C-n><C-W><Left>
" " /Floaterm

