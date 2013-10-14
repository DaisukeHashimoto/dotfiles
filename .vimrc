
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

" common
Bundle 'vim-scripts/yanktmp.vim'
Bundle "vim-scripts/renamer.vim"
Bundle 'kien/ctrlp.vim'

" SnipMate
Bundle "MarcWeber/vim-addon-mw-utils"
Bundle "tomtom/tlib_vim"
Bundle "honza/vim-snippets"
Bundle "garbas/vim-snipmate"

" unite
"
" # for vimproc
" cd ~/.vim/bundle/vimproc/
" make -f make_mac.mak
Bundle 'Shougo/unite.vim'
Bundle 'Shougo/vimproc'
Bundle 'Shougo/vimfiler'

" git
Bundle "tpope/vim-fugitive"
Bundle "airblade/vim-gitgutter"

" python
Bundle 'klen/python-mode'
Bundle "davidhalter/jedi-vim"
Bundle "andviro/flake8-vim"

" color scheme
Bundle "nanotech/jellybeans.vim"
Bundle "w0ng/vim-hybrid"
Bundle "jpo/vim-railscasts-theme"

" syntax
Bundle 'scrooloose/syntastic'
Bundle 'motus/pig.vim'

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

" for unite
nmap <unique> <F2> :Unite file_mru -default-action=vsplit<CR>

" for vimfiler
nmap <unique> <F3> :VimFiler -split -simple -winwidth=35 -no-quit<CR>
nmap <unique> <F4> :VimFilerBufferDir -split -simple -winwidth=35 -no-quit<CR>

" rope jump to occurrences
nmap <unique> <F5> :call RopeFindOccurrences()<CR>

" rope completion
imap <unique> <F6> <C-Space>

" ctags completion
imap <unique> <F7> <C-x><C-]>

" unite bookmark
nmap <unique> <F8> :Unite bookmark<CR>

" copy ward to clipboard
nmap <unique> <F9> "*yw
vmap <unique> <F9> "*y

" rope jump to define
nmap <unique> <c-n> :call RopeGotoDefinition()<CR>

" for yanktmp
nmap <silent><unique> sy :call YanktmpYank()<CR>
nmap <silent><unique> sp :call YanktmpPaste_p()<CR>
nmap <silent><unique> sP :call YanktmpPaste_P()<CR>

vmap <silent><unique> sy :call YanktmpYank()<CR>
vmap <silent><unique> sp :call YanktmpPaste_p()<CR>
vmap <silent><unique> sP :call YanktmpPaste_P()<CR>

" for gitgutter
nnoremap <silent> ,gg :<C-u>GitGutterToggle<CR>
nnoremap <silent> ,gh :<C-u>GitGutterLineHighlightsToggle<CR>

" python flake8-vim
nnoremap ,pp <Esc>:PyFlakeAuto<CR>
vnoremap ,pp <Esc>:PyFlakeAuto<CR>

" perl
nnoremap ,pt <Esc>:%! perltidy -se<CR>
vnoremap ,pt <Esc>:'<,'>! perltidy -se<CR>

" git grep fugitive.vim
nmap <unique> Gg :Ggrep! 

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

set clipboard=unnamed

" ctags
set tags=~/.tags

" enable mouse
"set mouse=a

autocmd QuickFixCmdPost *grep* cwindow
"autocmd VimEnter * argadd **/*.pm **/*.pl

set wildmode=longest,list

"""""""""""""""""""""""""""""""""""""""""""""""""""""
" for unite
"""""""""""""""""""""""""""""""""""""""""""""""""""""
" ignore pyc
let vimfiler_ignore_pattern = '*.pyc'


"""""""""""""""""""""""""""""""""""""""""""""""""""""
" for python
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


" jedi default autocompletion command:
let g:jedi#autocompletion_command = "<C-j>"
" Jedi automatically starts the completion
let g:jedi#popup_on_dot = 0
" that displays the function definition you're currently in
let g:jedi#show_function_definition = "0"
" that displays the function definition you're currently in
let g:jedi#goto_command = "<C-i>"


"""""""""""""""""""""""""""""""""""""""""""""""""""""
" for colorscheme
"""""""""""""""""""""""""""""""""""""""""""""""""""""
set t_Co=256

set background=dark
colorscheme jellybeans

augroup filetypedetect
  au BufNewFile,BufRead *.pig set filetype=pig syntax=pig
  au BufNewFile,BufRead *.html set filetype=htmldjango syntax=htmldjango
augroup END

