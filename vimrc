" pathogen, plugin manager
runtime bundle/vim-pathogen/autoload/pathogen.vim
execute pathogen#infect()

" json format
autocmd BufNewFile,BufRead *.json set ft=javascript

" visual stuff
set number
set t_Co=256
set background=dark
colorscheme hybrid

" indentation
setlocal tabstop=4
setlocal shiftwidth=4
setlocal expandtab
setlocal autoindent
setlocal smartindent

" temp stores
set dir=~/.vim/.swap/
set backup
set backupdir=~/.vim/.backup/,~/tmp,.
set undofile
set undodir=~/.vim/.undo/

" ignore paths
set wildignore+=*/node_modules/*
set wildignore+=*/build/*
set wildignore+=*/compiled/*
set wildignore+=*/bower_components/*
set wildignore+=*/coverage/*

" cursor line
augroup CursorLine
  au!
  au VimEnter,WinEnter,BufWinEnter * setlocal cursorline
  au WinLeave * setlocal nocursorline
augroup END

" EOL
:let g:PreserveNoEOL = 0

" golang
let g:go_highlight_functions=1
let g:go_highlight_methods=1
let g:go_highlight_structs=1
let g:go_highlight_interfaces=1
let g:go_highlight_operators=1

" sytastic
let g:syntastic_check_on_open=1
"let g:syntastic_mode_map={ 'mode': 'active', 'passive_filetypes': ['go'] }
let g:syntastic_go_checkers=['golint', 'govet', 'errcheck']
let g:syntastic_javascript_checkers=['eslint']

" move
let g:move_key_modifier='C'

" nerd tree
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
map <C-n> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
