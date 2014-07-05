"""""""""""""""""""""""""""""""""""""""""""""""""""""
" for Shougo/neobundle.vim start
"""""""""""""""""""""""""""""""""""""""""""""""""""""
if has('vim_starting')
  set nocompatible               " Be iMproved

  " Required:
  set runtimepath+=/home/hashimoto/.vim/bundle/neobundle.vim/
endif

" Required:
call neobundle#begin(expand('/home/hashimoto/.vim/bundle'))

" Let NeoBundle manage NeoBundle
" Required:
NeoBundleFetch 'Shougo/neobundle.vim'


" My Bundles here:

" common
NeoBundle 'vim-scripts/yanktmp.vim'
NeoBundle "vim-scripts/renamer.vim"
NeoBundle 'kien/ctrlp.vim'
NeoBundle 'thinca/vim-quickrun'
NeoBundle 'scrooloose/nerdtree'

" SnipMate
NeoBundle "MarcWeber/vim-addon-mw-utils"
NeoBundle "tomtom/tlib_vim"
NeoBundle "honza/vim-snippets"
NeoBundle "garbas/vim-snipmate"

" unite
"
" # for vimproc
" cd ~/.vim/bundle/vimproc/
" make -f make_mac.mak
NeoBundle 'Shougo/unite.vim'
NeoBundle 'Shougo/vimproc'

" git
NeoBundle "tpope/vim-fugitive"

" python
NeoBundle 'klen/python-mode'
NeoBundle "davidhalter/jedi-vim"

" perl
NeoBundle 'c9s/perlomni.vim'
NeoBundle 'y-uuki/perl-local-lib-path.vim'

" SQL
NeoBundle 'vim-scripts/Align'
NeoBundle 'vim-scripts/SQLUtilities'

" color scheme
NeoBundle "nanotech/jellybeans.vim"

" syntax
NeoBundle 'motus/pig.vim'



" Required:
call neobundle#end()

" Required:
filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck


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

" ctags
nmap <C-]> g<C-]>

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
let g:jedi#completions_enabled = 0

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

