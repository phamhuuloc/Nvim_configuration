"*****************************************************************************"
"set up for plugin hexokinase to show color background of color code in js,
"html, css file. Then we know how does it look like of the color
set termguicolors
let g:Hexokinase_highlighters = ['backgroundfull']
set number relativenumber
set number
set backspace=2                         " Backspace deletes like most programs in insert mode
set tabstop=2
set shiftwidth=2
set hidden
set pumheight=10                        " Makes popup menu smaller
" set ruler              			            " Show the cursor position all the time
set cmdheight=1                         " More space for displaying messages can be 2
set wrap                                " Display long lines as just one
set textwidth=80
set linebreak                            " wrap long lines at a character in 'breakat' rather
" set smarttab                            " Makes tabbing smarter will realize you have 2 vs 4
set expandtab                           " Converts tabs to spaces
set smartindent                         " Makes indenting smart
set noshowmode                          " We don't need to see things like -- INSERT -- anymore
set nobackup                            " This is recommended by coc
set nowritebackup                       " This is recommended by coc
set updatetime=300                      " Faster completion default 500ms
set timeoutlen=30000                      " By default timeoutlen is 1000 ms, popup poppup
" set formatoptions-=cro                  " Stop newline continution of comments
set clipboard=unnamedplus               " Copy paste between vim and everything else
set splitbelow                          " Horizontal splits will automatically be below
set splitright                          " Vertical splits will automatically be to the right
set t_Co=256                            " Support 256 colors
set conceallevel=0                      " So that I can see `` in markdown files
set lazyredraw				                  " Avoids updating the screen before commands are completed
set cursorline                          " Enable highlighting of the current line
set showtabline=2                       " Always show tabs
" set backspace=indent,eol,start          " Fix backspace indent
set mouse=a  				                    " Enable your mouse
set mousemodel=popup_setpos
" Use modeline overrides
" set modeline
" set modelines=10

" set notitle
set noerrorbells
set noswapfile
" set colorcolumn=80 
" hi ColorColumn ctermbg=0 guibg=#333333

" highlight clear SignColumn
" hi Pmenu guibg=#3d3d3d gui=NONE
" hi PmenuSel guibg=#232323 gui=NONE
" hi PmenuSbar guibg=#bcbcbc
" hi PmenuThumb guibg=#585858

" Encoding
set encoding=utf-8
set fileencoding=utf-8                  " The encoding written to file
set fileencodings=utf-8
set fileformats=unix

" Searching
set ignorecase                            " ignore Upper or Lowercase
set smartcase                             " depend of pattern lower or Upper
set hlsearch                              " hightlight search \
" set incsearch                             " set increment next search result

"*****************************************************************************
"" Visual, Theme Settings
"*****************************************************************************
" theme for vim
colorscheme dracula

" turn on airline powerline symbol by downloand install fonts https://github.com/powerline/fonts via ./install.sh in folder fonts-master https://www.youtube.com/watch?v=-r6Sj70Ziws&ab_channel=TheFrugalComputerGuy
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 0
let g:airline#extensions#tabline#buffer_nr_show = 0 "1 to show buffer no.

" hightlight comment in italic 
  " hi Comment cterm=italic

" hightlight background transparent background for nvim
hi! Normal ctermbg=NONE guibg=NONE 
hi! NonText ctermbg=NONE guibg=NONE guifg=NONE ctermfg=NONE
"highlight color for floaterm
" highlight FloatermBorder guifg=#f35254 guibg=#31334F
highlight FloatermBorder guifg=#f35254 
"let g:onedark_hide_endofbuffer=1
"let g:onedark_terminal_italics=1
"let g:onedark_termcolors=256

"*****************************************************************************
"" Abbreviations
"*****************************************************************************

" no one is really happy until you have this shortcuts
cnoreabbrev W! w!
cnoreabbrev Q! q!
cnoreabbrev Wq wq
cnoreabbrev Wa wa
cnoreabbrev wQ wq
cnoreabbrev WQ wq
cnoreabbrev W w
cnoreabbrev Q q

"*****************************************************************************
"" Commands
"*****************************************************************************

" remove trailing whitespaces
command! FixWhitespace :%s/\s\+$//e

"*****************************************************************************
"" Autocmd Rules
"*****************************************************************************

" The PC is fast enough, do syntax highlight syncing from start unless 200 lines
augroup vimrc-sync-fromstart
autocmd!
autocmd BufEnter * :syntax sync maxlines=200
augroup END

" Remember cursor position
augroup vimrc-remember-cursor-position
autocmd!
autocmd BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g`\"" | endif
augroup END

autocmd FileType scss setl iskeyword+=@-@

"*****************************************************************************
"" Mappings, nnore = nonrecursive (De quy) mean call function inside function
" create loop and can be infinited loop
" Commands                        Mode
" --------                        ----
" nmap, nnoremap, nunmap          Normal mode
" imap, inoremap, iunmap          Insert and Replace mode
" vmap, vnoremap, vunmap          Visual and Select mode
" xmap, xnoremap, xunmap          Visual mode
" smap, snoremap, sunmap          Select mode
" cmap, cnoremap, cunmap          Command-line mode
" omap, onoremap, ounmap          Operator pending mode
"*****************************************************************************

" Map <leader> to <space>
let mapleader=' '   
" map redo ctrl + r 
nnoremap U <C-R>

" Basic mappings
" inoremap jj <ESC>
" inoremap jk <ESC>
" xnoremap jj <ESC>
" xnoremap jk <ESC>
" xnoremap jk <Esc>
" xnoremap kj <Esc>
" nnoremap j jzz
" nnoremap k kzz
" nnoremap # #zz
" nnoremap * *zz
" nnoremap n nzz
" nnoremap N Nzz
" nnoremap G Gzz

" Better nav for omnicomplete when go up and down in menu popup
inoremap <expr> <c-j> ("\<C-n>")
inoremap <expr> <c-k> ("\<C-p>")

" Use alt + hjkl to resize windows
" nnoremap <M-j>    :resize -2<CR>
" nnoremap <M-k>    :resize +2<CR>
" nnoremap <M-h>    :vertical resize -2<CR>
" nnoremap <M-l>    :vertical resize +2<CR>

" TAB in general mode will move to text buffer
nnoremap <TAB> :bnext<CR>
" SHIFT-TAB will go back
nnoremap <S-TAB> :bprevious<CR>
" Better window navigation ctrl+h,j,k,l instead of ctrl+w+h,j,k,l
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
nnoremap  m   b
" nnoremap <Leader>o o<Esc>^Da
" nnoremap <Leader>O O<Esc>^Da

" terminal in vim, stop
" nmap <silent><leader>z <C-z> 

" Yank to Vim + OS clipboard by installing xclip https://ubuntu.pkgs.org/20.04/ubuntu-universe-amd64/xclip_0.13-1_amd64.deb.html
" Copy in Visual mode
vmap <leader>c :!xclip f -sel clip<CR>
" Paste in normal mode
map <leader>v mz:-1r !xclip -o -sel clip<CR>`z

"clone paragraph inside a block `}` and aste it right under empty row
nnoremap cp yap}p

" format code inside a block
noremap <silent><leader>a =ip

" Jump to something
" search and highlight 
nnoremap <silent><leader>f /
" clear highlight from search by /
nnoremap <silent><leader><cr> :noh<cr>
" Open files in git repo 
nnoremap <silent><leader>p :GFiles --cached --others --exclude-standard<CR>
" Open files in current folder
nnoremap <silent><leader>o :Files<CR>
" Open list of buffers (window open)
nnoremap <silent><leader>b :Buffers<CR>

" Create NEW buffer
" nnoremap <silent><leader>n :e! ~/buff<CR>
" close buffer. Consider to active this due to it will close buffer 
nnoremap <silent><leader>q :bd!<cr>
" close window when split window
" nnoremap <silent><leader>q :close<cr>
" EXIT vim
nnoremap <silent><leader>e :q!<cr>
" Open list of Files History
nnoremap <silent><leader>i :History<CR>
" Open list of Commands History
nnoremap <silent><leader>y :History:<CR>
" Open search by 'key word etc: class name, #id, function name...' entire current folder
nnoremap <silent><leader>g :Rg<CR>
" nnoremap <silent><leader>a 1Ag<CR>
" nnoremap <silent>ng :Ag<CR>
" map % to jum faster better open and close of {, [, (
nnoremap <silent><leader>j %
vnoremap <silent><leader>j %

" Fast save
nnoremap <silent><leader>s :w!<cr>
" split current window vertical on the right 'set splitright'  
nnoremap <silent><Leader>w :vsplit<CR>
" split current window horizontal on bottom 'set splitbelow'
nnoremap <silent><Leader>W :split<CR>
" quick jump to first non-blank of row
" nnoremap <silent><leader>h ^
nmap <silent><leader>h ^
vmap <silent><leader>h ^
" quick jump to last non-blank of row
" nnoremap <silent><leader>l $
nmap <silent><leader>l $
vmap <silent><leader>l $


" In Visual Mode Indent shifting > and <
vnoremap < <gv
vnoremap > >gv

  "In Visual Mode move line up, down when in visual mode
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv

" In normal mode map to go faster up, down
nnoremap J 5j
nnoremap K 5k
" Working with NERDTree
" press `m` to call menu @ cursor position to (add,delete file)
nnoremap <silent><F2> :NERDTreeFind<CR>
 noremap <silent><leader>rr :NERDTreeToggle<CR>
" remap j and k to move down each line of wrapping section (code,text)  
nnoremap j gj
nnoremap k gk
" Do emmet for Pug emmet for example type div then pressj<Tab> then become <div></div>
imap j<Tab> <C-Y>,
" GoTo code navigation, super cool to work with source code 
" go to definition for example go to the function where it is exported to use
nmap <silent>gd <Plug>(coc-definition)
" back to previous location. Very useful when using gd then <C-o> to go back 
nmap <silent>gb <C-o>
nmap <silent>gy <Plug>(coc-type-definition)
nmap <silent>gi <Plug>(coc-implementation)
" Go to references where that function being used in the source code
nmap <silent>gr <Plug>(coc-references)
nmap <silent><F12> <Plug>(coc-definition) 

" Use `[g` and `]g` to navigate diagnostics
" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
nmap <silent>[g <Plug>(coc-diagnostic-prev)
nmap <silent>]g <Plug>(coc-diagnostic-next)


" Use H to show documentation in preview window when hover.
nnoremap <silent> H :call <SID>show_documentation()<CR>
function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  elseif (coc#rpc#ready())
    call CocActionAsync('doHover')
  else
    execute '!' . &keywordprg . " " . expand('<cword>')
  endif
endfunction


