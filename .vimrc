
"""""""""""""""""""""""""""""""""""""""""""""""""""""
" for vundle start
"""""""""""""""""""""""""""""""""""""""""""""""""""""
set nocompatible               " be iMproved
filetype off                   " required!

set rtp+=~/.vim/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'

" My Bundles here:
Bundle 'https://github.com/klen/python-mode.git'
Bundle 'yanktmp.vim'
Bundle 'grep.vim'
Bundle 'https://github.com/scrooloose/nerdtree.git'
Bundle 'https://github.com/kevinw/pyflakes-vim.git'
Bundle 'motus/pig.vim'

Bundle "MarcWeber/vim-addon-mw-utils"
Bundle "tomtom/tlib_vim"
Bundle "honza/vim-snippets"
Bundle "garbas/vim-snipmate"
Bundle "davidhalter/jedi-vim"

filetype plugin indent on     " required!
"
" Brief help
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install(update) bundles
" :BundleSearch(!) foo - search(or refresh cache first) for foo
" :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle command are not allowed..

"""""""""""""""""""""""""""""""""""""""""""""""""""""
" mapping
"""""""""""""""""""""""""""""""""""""""""""""""""""""
" change window
map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-l> <c-w>l
map <c-h> <c-w>h

" tab
nmap <s-tab> :tabn<CR>

" Turn off search hilight
nmap <Esc><Esc> :nohlsearch<CR><Esc>

" for nerdtree
nmap <unique> <F2> :NERDTreeToggle<CR>
nmap <unique> <F3> :NERDTreeFind<CR>

" rope jump to define
nmap <unique> <c-n> :call RopeGotoDefinition()<CR>

" rope jump to occurrences
nmap <unique> <c-p> :call RopeFindOccurrences()<CR>

" for grep
nmap <silent><unique> <F7> :Grep<CR>
nmap <silent><unique> <F8> :Rgrep<CR>

" copy ward to clopboard
nmap <unique> <F9> "*yw
vmap <unique> <F9> "*y


" rope completion
imap <unique> <F6> <C-Space>

" ctags completion
imap <unique> <F7> <C-x><C-]>

" for yanktmp
nmap <silent><unique> sy :call YanktmpYank()<CR>
nmap <silent><unique> sp :call YanktmpPaste_p()<CR>
nmap <silent><unique> sP :call YanktmpPaste_P()<CR>

vmap <silent><unique> sy :call YanktmpYank()<CR>
vmap <silent><unique> sp :call YanktmpPaste_p()<CR>
vmap <silent><unique> sP :call YanktmpPaste_P()<CR>



"""""""""""""""""""""""""""""""""""""""""""""""""""""
" general
"""""""""""""""""""""""""""""""""""""""""""""""""""""
set encoding=utf8
set fileencodings=utf8,iso-2022-jp,sjis

set expandtab
set tabstop=2
set softtabstop=4
set shiftwidth=4
set autoindent
set backspace=indent,eol,start
set wrap

syntax on

set hlsearch


" ctags
set tags=~/.tags

"""""""""""""""""""""""""""""""""""""""""""""""""""""
" for plugin
"""""""""""""""""""""""""""""""""""""""""""""""""""""
" for python-mode
" Enable python folding
let g:pymode_folding = 0
" Disable pylint checking every save
let g:pymode_lint_write = 0
" Autoremove unused whitespaces
let g:pymode_utils_whitespaces = 0
" ropevim will open a new buffer for "go to definition" result
let g:pymode_rope_goto_def_newwin = 'vnew'
let g:pyflakes_use_quickfix = 0

" install gxargs
" brew install findutils
if has('mac')
  if system('which gxargs')
    let Grep_Xargs_Path = 'gxargs'
  else
    let Grep_Find_Use_Xargs = 0
  endif
endif

" jedi default autocompletion command:
let g:jedi#autocompletion_command = "<C-j>"
" Jedi automatically starts the completion
let g:jedi#popup_on_dot = 0
" that displays the function definition you're currently in
let g:jedi#show_function_definition = "0"

" ignore pyc
let NERDTreeIgnore = ['\.pyc$']

"""""""""""""""""""""""""""""""""""""""""""""""""""""
" for colorscheme
"""""""""""""""""""""""""""""""""""""""""""""""""""""
set t_Co=256

set background=dark
colorscheme desert

augroup filetypedetect
  au BufNewFile,BufRead *.pig set filetype=pig syntax=pig
augroup END

