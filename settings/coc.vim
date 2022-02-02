" Command :CocConfig to open coc-settings.json file
" COC. Please remember run command $:CocInstall <extensions> to install
let g:coc_global_extensions = ['coc-css', 'coc-eslint', 'coc-json', 'coc-tsserver','coc-stylelintplus','coc-snippets', 'coc-pairs']

" bind `tab` for autocompletion https://stackoverflow.com/questions/67370086/how-to-remap-coc-nvim-autocomplete-key
inoremap <silent><expr> <tab> pumvisible() ? coc#_select_confirm() : "\<C-g>u\<TAB>"
inoremap <silent><expr> <cr> "\<c-g>u\<CR>"
"" coc-spippets how to use? 1. type command `:CocCommand snippets.editSnippets`
" to open the list of snippets
" fix this error https://github.com/neovim/neovim/issues/12234 . python3
" --version. Then install python3 as link https://phoenixnap.com/kb/how-to-install-python-3-ubuntu . Then in nvim run `:checkhealth provider` then install pip
" sudo apt-get install python3-pip     then install below
"python3 -m pip install --user --upgrade pynvim
" format scss
" autocmd FileType scss setl iskeyword+=@-@
" Run the command to approve eslint :CocCommand eslint.showOutputChannel -->
" select 1 to allow anywhere

" fold nvim
" select range by `v` then to fold type zf and unfold is stand at fold area
" then type zo 

