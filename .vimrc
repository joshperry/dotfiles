" VUNDLE Config
filetype off                   " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'

" My Bundles here:
Bundle 'tpope/vim-fugitive'
Bundle 'scrooloose/nerdtree'
Bundle 'kien/ctrlp.vim'
Bundle 'kchmck/vim-coffee-script'
Bundle 'pangloss/vim-javascript'
Bundle 'mattn/webapi-vim'
Bundle 'mattn/gist-vim'
Bundle 'elzr/vim-json'
Bundle 'scrooloose/syntastic'
Bundle 'tpope/vim-surround'
Bundle 'tpope/vim-obsession'
Bundle 'editorconfig/editorconfig-vim'
Bundle 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
Bundle 'rodjek/vim-puppet'
Plugin 'SirVer/ultisnips'

" Needed by typescript server client tsuquyomi
Bundle 'Shougo/vimproc.vim'
" typescript server client
Bundle 'Quramy/tsuquyomi' 

" Just syntax highlighting
Bundle 'leafgarland/typescript-vim' 
Bundle 'jason0x43/vim-js-indent'

set directory^=$TMP//,$TEMP//,$TMPDIR//
set nobackup
set nowritebackup
set nocompatible

if has("win32") || has('win64')
"	Windows specific configuration
endif

filetype plugin indent on
" END VUNDLE Config

"set fileformats=unix

set tabstop=4 shiftwidth=4
set incsearch	"incremental and highlight search

" Switch syntax highlighting on, when the terminal has colors
" Also switch on highlighting the last used search pattern.
if &t_Co > 2 || has("gui_running")
  syntax on
  set hlsearch
  colorscheme slate
endif

" In many terminal emulators the mouse works just fine, thus enable it.
if has('mouse')
  set mouse=a
endif

if has("gui_running") 
	if has("win32")
		set guifont=Consolas:h9:cANSI 
	endif
	if has("macunix")
		set guifont=Sauce\ Code\ Powerline\ Light:h13
	endif
    set lines=60 columns=160
else
    if exists("+lines")
"	set lines=60
    endif
    if exists("+columns")
"	set columns=160
    endif
endif 

" Restore file's previous cursor position
function! ResCur()
  if line("'\"") <= line("$")
    normal! g`"
    return 1
  endif
endfunction

augroup resCur
  autocmd!
  autocmd BufWinEnter * call ResCur()
augroup END

" ---------------
" UI
" ---------------
set ruler  " Ruler on
set relativenumber " relative line numters
set nu  " Enable "hybrid" line numbers
set nowrap  " Line wrapping off
set laststatus=2  " Always show the statusline
set cmdheight=2
set showcmd		" display incomplete commands
set cursorline

set statusline=%<%f\ %h%m%r%{fugitive#statusline()}%=%-14.(%l,%c%V%)\ %P
" ViM, remember things on exit please
" '100 remember marks for 100 files
" <50 remember 50 register lines
" h don't hlsearch in viminfo file
set viminfo='100,<50,h

" ---------------
" Behaviors
" ---------------
" show all file autocompletion options
set wildmenu
set wildmode=list:longest
set autoread           " Automatically reload changes if detected
set history=768        " Number of things to remember in history.
set cf                 " Enable error files & error jumping.
set clipboard=unnamed  " Yanks go on clipboard instead.
set autowrite          " Writes on make/shell commands
set timeoutlen=500     " Time to wait for a command (after leader for example)
" set foldlevelstart=99  " Remove folds
set formatoptions=crql
nnoremap <C-e> 3<C-e>
nnoremap <C-y> 3<C-y>

" ---------------
" Sounds
" ---------------
set noerrorbells
set novisualbell
set t_vb=

" ---------------
" Leader
" ---------------

" Set leader to ,
let mapleader=","

" ---------------
" My Shortcuts
" ---------------
" clear search highlights
nnoremap <leader>s :let @/ = ""<CR>
" complete an incsearch without highlights
cnoremap <silent> <C-cr> <CR>:noh<CR>
" Navigate splits with ctrl-hjkl
nnoremap <c-h> <c-w>h
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-l> <c-w>l

" ---------------
" NERDTree
" ---------------
nmap <silent><C-n> :NERDTreeToggle<CR>
nnoremap <leader>n :NERDTree<CR>
nnoremap <leader>nf :NERDTreeFind<CR>
nnoremap <leader>nc :NERDTreeClose<CR>
nnoremap <leader>nt :NERDTreeToggle<CR>
let NERDTreeShowBookmarks=1
let NERDTreeChDirMode=2 " Change the NERDTree directory to the root node

" --------------
" VimGist
" --------------
let g:gist_clip_command = 'pbcopy'

" --------------
" Syntastic
" --------------
let g:syntastic_mode_map = {
	\ "mode": "active",
	\ "passive_filetypes": ["typescript"] }

let g:syntastic_cpp_compiler = 'clang++'
let g:syntastic_cpp_compiler_options = ' -std=c++11 -stdlib=libc++ -pedantic -Wall -Wextra'

" --------------
" UtilSnip
" --------------
" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="horizontal"
