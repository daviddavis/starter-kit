set number
colorscheme Tomorrow-Night
set guioptions=e
set showtabline=2
set tabpagemax=15
set linespace=2
set autoindent
set smartindent

" Turn on right scrollbars
set guioptions+=R
set guioptions+=r

" set up peepopen (to cmd p)
if has("gui_macvim")
  " go to normal mode after save
  "iunmenu File.Save
  "imenu <silent> File.Save <Esc>:if expand("%") == ""<Bar>browse confirm w<Bar>else<Bar>confirm w<Bar>endif<CR>

  " Command-][ to increase/decrease indentation like textmate
  vmap <D-]> >gv
  vmap <D-[> <gv

  imap <silent> <D-d> <ESC>:NERDTreeToggle<CR>i
  map <silent> <D-d> :NERDTreeToggle<CR>

  macmenu &File.Print key=<nop>
  map <D-p> :CommandT<CR>
  imap <D-p> <Esc>:CommandT<CR>

  macmenu &File.Open\.\.\. key=<nop>
  imap <D-o> <ESC>:CommandTBuffer<CR>
  map <D-o> :CommandTBuffer<CR>

  "map command numbers to tabs
  map <D-1> 1gt
  map <D-2> 2gt
  map <D-3> 3gt
  map <D-4> 4gt
  map <D-5> 5gt
  map <D-6> 6gt
  map <D-7> 7gt
  map <D-8> 8gt
  map <D-9> 9gt
  map <D-0> :tablast<CR>

  " use CMD-j and CMD-k to cycle through windows
  map <D-j> <C-w>w
  map <D-k> <C-w>W
end

" Include user's local vim config
if filereadable(expand("~/.gvimrc.local"))
  source ~/.gvimrc.local
endif
