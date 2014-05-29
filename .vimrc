
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
Bundle 'thinca/vim-quickrun'
Bundle 'scrooloose/nerdtree'

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

" git
Bundle "tpope/vim-fugitive"

" python
Bundle 'klen/python-mode'
Bundle "davidhalter/jedi-vim"

" perl
Bundle 'c9s/perlomni.vim'
Bundle 'y-uuki/perl-local-lib-path.vim'

" SQL
Bundle 'vim-scripts/Align'
Bundle 'vim-scripts/SQLUtilities'

" color scheme
Bundle "nanotech/jellybeans.vim"

" syntax
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

" for nerdtree
nmap <unique> <F4> :NERDTreeToggle<CR>

" align window
nmap <unique> <F5> <C-w>=

" ctags completion
imap <unique> <F7> <C-x><C-]>

" unite bookmark
nmap <unique> <F8> :Unite bookmark<CR>

" copy ward to clipboard
nmap <unique> <F9> "*yw
vmap <unique> <F9> "*y

" for yanktmp
nmap <silent><unique> sy :call YanktmpYank()<CR>
nmap <silent><unique> sp :call YanktmpPaste_p()<CR>
nmap <silent><unique> sP :call YanktmpPaste_P()<CR>

vmap <silent><unique> sy :call YanktmpYank()<CR>
vmap <silent><unique> sp :call YanktmpPaste_p()<CR>
vmap <silent><unique> sP :call YanktmpPaste_P()<CR>

" python
nnoremap ,pp <Esc>:PymodeLintAuto<CR>

" perl
nnoremap ,pt <Esc>:%! perltidy -se<CR>
vnoremap ,pt <Esc>:'<,'>! perltidy -se<CR>

" git grep fugitive.vim
nmap <unique> Gg :Ggrep! 
nmap <unique> Gb :Gblame<CR>
nmap <unique> Gd :Gdiff<CR>
nmap <unique> Gs :Gstatus<CR>

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
" ctags -R --languages=perl --tag-relative -f ~/.tags
set tags=~/.tags

autocmd QuickFixCmdPost *grep* cwindow

set wildmode=longest,list

"""""""""""""""""""""""""""""""""""""""""""""""""""""
" for unite
"""""""""""""""""""""""""""""""""""""""""""""""""""""


"""""""""""""""""""""""""""""""""""""""""""""""""""""
" for python
"""""""""""""""""""""""""""""""""""""""""""""""""""""
" for python-mode
let g:pymode_python = 'python3'
let g:pymode_folding = 0
let g:pymode_lint_write = 0
let g:pymode_virtualenv = 0
let g:pymode_utils_whitespaces = 0

" for jedi
let g:jedi#popup_on_dot = 0
let g:jedi#use_tabs_not_buffers = 0
let g:jedi#use_splits_not_buffers = "left"

let g:jedi#goto_assignments_command = "<c-u>"
let g:jedi#goto_definitions_command = "<c-n>"
let g:jedi#documentation_command = "K"
let g:jedi#usages_command = "<c-m>"
let g:jedi#completions_command = "<c-i>"
let g:jedi#rename_command = "<c-r>"
let g:jedi#show_call_signatures = "1"

"""""""""""""""""""""""""""""""""""""""""""""""""""""
" for perl
"""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:perl_local_lib_path = "vendor/lib"
autocmd FileType perl PerlLocalLibPath


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

