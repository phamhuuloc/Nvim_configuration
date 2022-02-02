" Loc  IT
call plug#begin('~/.config/nvim/plugged') 
" Insert or delete brackets, parens, quotes in pair.
Plug 'jiangmiao/auto-pairs'
" Make your Vim/Neovim as smart as VSCode
Plug 'neoclide/coc.nvim', {'branch': 'release'}
" expanding abbreviations similar to https://emmet.io/
Plug 'mattn/emmet-vim'
" search files in source code
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
" explore sidebar to see folder & files in project
Plug 'scrooloose/nerdtree'
" show info at statusline 
Plug 'vim-airline/vim-airline'
" auto close tag, type `<table` then `>>` will be 
" <table>
"   `| cursor will be move to | position`
" </table>
Plug 'alvan/vim-closetag'
" comment same with vscode gcl, gcc, gcl
Plug 'tpope/vim-commentary'
" show information of git on statusline and can do git in nvim with G: 
Plug 'tpope/vim-fugitive'
" add blockquotes, tags... surround a selected area
Plug 'tpope/vim-surround'
" onedarkthem less contract
Plug 'dracula/vim',
" highlight syntax js, jsx, css, html5 https://github.com/sheerun/vim-polyglot
Plug 'sheerun/vim-polyglot'
" easy move with jump. Consider NOT use this 
" Plug 'easymotion/vim-easymotion'
" view mark file add +, change ~, delete ~ and deal with that stage or undo
Plug 'airblade/vim-gitgutter'
" Plug 'lilydjwg/colorizer' " Do NOT use this one led to delay when switching between screen 
" show the color of hex, rgb code as background of that color in all files (js, html, css...) test color #f80 #3ff
Plug 'rrethy/vim-hexokinase', { 'do': 'make hexokinase' }
" terminal while using nvim to check git, consider not use this. it lag. use
" `ctrl + z` to temporary exit vim buffer to open terminal to do what ever you
" want then `fg` enter to return back to vim buffer
" Plug 'voldikss/vim-floaterm'
" use s or S then {char}{char} to search below (s) or above (S) {char}{char} 
Plug 'justinmk/vim-sneak'
" Markdown preview file. Once open markdown file in nvim then type
" :MarkdownPreview then browser automatically open it and
" :MarkdownPreviewStop to stop. This combine with joplin terminal note
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  }
Plug 'honza/vim-snippets'
Plug 'iberianpig/tig-explorer.vim'
Plug 'ryanoasis/vim-devicons'
Plug 'prettier/vim-prettier', {
  \ 'do': 'yarn install --frozen-lockfile --production',
  \ 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue', 'svelte', 'yaml', 'html'] }
" float terminal on vim 
Plug 'voldikss/vim-floaterm'
" vim-multiple-cursors
Plug 'terryma/vim-multiple-cursors'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'kyazdani42/nvim-web-devicons' " Recommended (for coloured icons)
Plug 'kevinhwang91/rnvimr', {'do': 'make sync'}
call plug#end()

let g:user_emmet_leader_key='<C-Z>'


" Autoclose Tags
let g:closetag_filenames = '*.html,*.xhtml,*.js,*.jsx,*.hbs'
" <Link></Link>  & <link></link> interger 0 | 1
let g:closetag_emptyTags_caseSensitive = 1
" /Autoclose Tags


"vim-fugitive'
"deal with git stage, unstage, commit, push, solve git conflict
"- to see status of git then use below comment
nmap gs :G<CR>
" move cursor to the file then press `u` for unstage, `s` for stage each file
" or all files
" use G:commit to commit change and G:push to push commit to remote
" Deal with merger conflict press `dd` to go to buffer to solve conflict
" link http://vimcasts.org/episodes/fugitive-vim-resolving-merge-conflicts-with-vimdiff/
" :diffget //2 - fetches the hunk from the target parent (on the left)
" :diffget //3 - fetches the hunk from the merge parent (on the right)
nmap gf :diffget //2<CR> 
nmap gj :diffget //3<CR>
" set :Gdiffsplit to 3 columns vertical
set diffopt+=vertical

"/vim-fugitive'

" Preview markdown file 
nmap <C-m> <Plug>MarkdownPreview

" The Silver Searcher
if executable('ag')
  let $FZF_DEFAULT_COMMAND = 'ag --hidden --ignore .git -g ""'
  set grepprg=ag\ --nogroup\ --nocolor
endif

" ripgrep
if executable('rg')
  let $FZF_DEFAULT_COMMAND = 'rg --files --hidden --follow --glob "!.git/*"'
  set grepprg=rg\ --vimgrep
  command! -bang -nargs=* Find call fzf#vim#grep('rg --column --line-number --no-heading --fixed-strings --ignore-case --hidden --follow --glob "!.git/*" --color "always" '.shellescape(<q-args>).'| tr -d "\017"', 1, <bang>0)
endif

let g:coc_global_extensions = ['coc-css', 'coc-eslint', 'coc-json', 'coc-tsserver','coc-stylelintplus','coc-snippets', 'coc-pairs']

inoremap <silent><expr> <tab> pumvisible() ? coc#_select_confirm() : "\<C-g>u\<TAB>"
inoremap <silent><expr> <cr> "\<c-g>u\<CR>"


" Other setting

for f in split(glob('~/.config/nvim/settings/*.vim'), '\n') 
   exe 'source' f
endfor

set foldmethod=marker 
