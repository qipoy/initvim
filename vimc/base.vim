syntax on

filetype plugin on
set omnifunc=syntaxcomplete#Complete

nmap <silent> <leader>x :!google-chrome-stable %<CR>
set number	" set/viewing number in vim
set nobackup " No Need backup for confirmation *.swp. its bullshit!
set ruler
set nowritebackup " its same!!!! *.swp. its bullshit!
set noswapfile
set autowrite
set hlsearch
set history=50	" show the cursor position all the time
set showcmd	" display incomplete commands

" Find and replace shortcut
map <leader>R <ESC>:%s/ 

" UTF 8, Please!
set termencoding=utf-8
set encoding=utf-8

"Fast way gor normal mode using jk
imap jk <ESC>
vmap jk <ESC>


"Stopping search highlight using Ctrl-q
map <C-q> /#$%^!(<CR>

"Update neovim configuration
map <leader>so :source ~/.config/nvim/init.vim<CR>

"Fast Shortcut for ~/.vimrc
nmap <silent> <leader>ev :e ~/.config/nvim/init.vim<CR>
nmap <silent> <leader>ep :e ~/.config/nvim/vimc/pluginlist.vim<CR>
nmap <silent> <leader>eb :e ~/.config/nvim/vimc/base.vim<CR>
nmap <silent> <leader>ec :e ~/.config/nvim/vimc/pluginc.vim<CR>

"For transparency
hi Normal ctermbg=none

"For configuration
if has('nvim')
	runtime! plugin/python_setup.vim
endif


set showmode " always show what mode we're currently editing in
set nowrap " don't wrap lines
set nosmarttab " Require this for editing tab in neovim!
set tabstop=2 " a tab is four spaces
set tags=tags
set softtabstop=2 " when hitting <BS>, pretend like a tab is removed, even if spaces
"retab 4
"set cursorline

set shiftwidth=2 " number of spaces to use for autoindenting
set autoindent " always set autoindenting on
set copyindent " copy the previous indentation on autoindenting
set number " always show line numbers
set ignorecase " ignore case when searching
set smartcase " ignore case if search pattern is all lowercase,
set shiftround " use multiple of shiftwidth when indenting with '<' and '>'

set backspace=indent,eol,start " allow backspacing over everything in insert mode

set timeout timeoutlen=200 ttimeoutlen=100

set autowrite "Save on buffer switch
set mouse=a

"Fast Save using short key.
nmap <leader>w :w!<cr>

" Down is really the next line
nnoremap j gj
nnoremap k gk

"easier window navigation
nmap <C-h> <C-w>h
nmap <C-j> <C-w>j
nmap <C-k> <C-w>k
nmap <C-l> <C-w>l

"Resize vsplit
nmap <S-h> :vertical resize +5<cr>
nmap <S-l> :vertical resize -5<cr>

"nmap <silent> <A-Up> :wincmd k<CR>
nmap <silent> <A-Down> :wincmd j<CR>
nmap <silent> <A-Left> :wincmd h<CR>
nmap <silent> <A-Right> :wincmd l<CR>

" Enable filetype plugins
filetype plugin on
filetype indent on
syntax enable
syntax on

inoremap <c-s> <Esc>:Update<CR>
autocmd BufWinEnter,WinEnter term://* startinsert

:tnoremap <C-q> <C-\><C-n>
:tnoremap <C-h> <C-\><C-n><C-w>h
:tnoremap <C-j> <C-\><C-n><C-w>j
:tnoremap <C-k> <C-\><C-n><C-w>k
:tnoremap <C-l> <C-\><C-n><C-w>l
:nnoremap <C-h> <C-w>h
:nnoremap <C-j> <C-w>j
:nnoremap <C-k> <C-w>k
:nnoremap <C-l> <C-w>l

set clipboard+=unnamedplus  "Clipboard Setting copy-paste

function! ClipboardYank()
	call system('xclip -i -selection clipboard', @@)
endfunction
function! ClipboardPaste()
	let @@ = system('xclip -o -selection clipboard')
endfunction

vnoremap <silent> y y:call ClipboardYank()<cr>
vnoremap <silent> d d:call ClipboardYank()<cr>
nnoremap <silent> p :call ClipboardPaste()<cr>p


" snippet for select all text
nmap <C-a> <esc>ggVG<CR>
imap <C-a> <esc>ggVG<CR>

"create indent line
:set listchars=tab:\▏\ 
:set list

"Javasccript Tricks
let g:javascript_plugin_jsdoc = 1
let g:javascript_plugin_ngdoc = 1
let g:javascript_plugin_flow = 1

"set foldmethod=syntax
set foldmethod=indent   
set foldnestmax=10
set nofoldenable
set foldlevel=2


"================================================
" Colorscheme GRUBBOX
" Themes and Colorscheme
"set background=dark
"colorscheme gruvbox 
"================================================

"================================================
" Colorscheme One 
"set background=dark
"colorscheme one
"let g:one_allow_italics = 1
"================================================


"================================================
" Colorscheme One Dark
set background=dark
colorscheme onedark
let g:one_allow_italics = 1
"================================================

"split
set splitbelow
set splitright
"split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

let python_highlight_all=1


"let g:python_host_prog = '/full/path/to/neovim2/bin/python'
"let g:python3_host_prog = '/full/path/to/neovim3/bin/python'
