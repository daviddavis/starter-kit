" use vim instead of vi
set nocompatible

" using vundle to load all plugins
if filereadable(expand("~/.vundle"))
  source ~/.vundle
endif

" enable syntax highlighting and file type detection
syntax enable
filetype plugin indent on

" ---------------------------------------------------------------------------
" BASIC SETTINGS
" ---------------------------------------------------------------------------

" Colorscheme options
colorscheme default

" Other Options
set wildmode=longest,list,full
set wildmenu
set vb
set binary noeol
set showmode
set showmatch
set ignorecase
set smartindent
set incsearch
set ignorecase smartcase
set ts=2
set et
set softtabstop=2
set sw=2
set nowrap
set hlsearch
set nobackup
set nowritebackup
set noswapfile
set list listchars=tab:\ \ ,trail:·
set autoread
set showcmd

" set the default text width to 80
set textwidth=80

" uncomment to show line numbers in command line vim
"set nu
"set nuw=4

" comment out to split left and top instead of right and below
set splitright
set splitbelow

" toggle paste mode with F2
set pastetoggle=<F2>

" Include user's local vim config
if filereadable(expand("~/.vimrc.local"))
  source ~/.vimrc.local
endif


" --------------------------------------------------------------------------
" CUSTOM AUTOCMDS
" --------------------------------------------------------------------------

augroup vimrcEx
  " clear all autocmds in the group
  autocmd!

  " FILE TYPES
  autocmd BufRead *.sql set filetype=mysql
  autocmd BufRead *.clj set filetype=clojure
  autocmd BufRead *.thor set filetype=ruby

augroup END

" ---------------------------------------------------------------------------
" PLUGIN SETTINGS
" ---------------------------------------------------------------------------

" syntastic warnings
let g:syntastic_enable_signs=1
let g:syntastic_quiet_warnings=1

" % to bounce from do to end etc.
runtime! macros/matchit.vim

" gundo undo visualizer
nnoremap <F5> :GundoToggle<CR>

" this seems to fix rvm
set shell=/bin/sh

" ---------------------------------------------------------------------------
" MAPPINGS
" ---------------------------------------------------------------------------

" Set map leader to , instead of \
" Change this depending on your preference
let mapleader = ','
" Some people typically choose backslash because it's unbound by default
" let mapleader = '\'

"Nerd Tree commands and options
map <Leader>d :NERDTreeToggle<CR>

" 1.8 -> 1.9 hash syntax
map <silent> <Leader>h :Bashrockets<CR>
map <silent> <Leader>oh :Hashrockets<CR>
nmap <C-h> :Bashrockets<CR>

" comands to edit and reload vimrc
nmap <silent> <leader>ev :e $MYVIMRC<CR>
nmap <silent> <leader>sv :so $MYVIMRC<CR>
