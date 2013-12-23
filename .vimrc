set nocompatible          "
filetype off              "

"Color Settings {
"set colorcolumn=85          "
set t_Co=256                 "
set background=dark          "
set cursorline               "
set cursorcolumn             "
set ttyfast
set ruler
set backspace=indent,eol,start

"}

"tab setting {
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
"}

set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1
set scrolloff=3
set fenc=utf-8
set autoindent
set hidden
set encoding=utf-8

"set laststatus=2
"set number                                    "
"set undofile                                  "
"set nowrap                                    "
"autocmd! bufwritepost _vimrc source %         "

"
"set relativenumber
"
set wrap
"GUI
set guifont=Inconsolata:h12
"
set isk+=-

set ignorecase "
set smartcase
"set gdefault
set incsearch
set showmatch
set hlsearch

set numberwidth=4          "
"set columns=135           "
"set lines=50              "
"winpos 620 45             "

set whichwrap=b,s,<,>,[,]  "

inoremap <c-j> <down>
inoremap <c-k> <up>
inoremap <c-l> <right>
inoremap <c-h> <left>

"===================================================
let mapleader=","
imap jj <esc>

inoremap <F1> <ESC>
nnoremap <F1> <ESC>
vnoremap <F1> <ESC>

nnoremap / /\v
vnoremap / /\v

nnoremap <tab> %
vnoremap <tab> %

nnoremap <leader>ft vatzf
nnoremap <leader>v v`]

nnoremap <leader>w <c-w>v<c-w>l
nnoremap <leader>wc <c-w>c
nnoremap <leader>ww <c-w>w

nnoremap <leader>t gt
nnoremap <leader>r gT
nnoremap <leader><space> :noh<cr>

nmap <leader>h I//jj
nmap <leader>ch ^xx
nmap <leader>q :execute "cd" expand("%:h")<CR>
nmap <leader>s :,s///c

nmap <leader>p :set paste<CR>
nmap <leader>pp :set nopaste<CR>

nmap <leader>fj :set ft=javascript<CR>
nmap <leader>fc :set ft=css<CR>
nmap <leader>fh :set ft=html<CR>
nmap <leader>fm :set ft=mako<CR>

set guioptions-=m
set guioptions-=T
set go-=r
set go-=L

map <silent> <F2> :if &guioptions =~# 'T' <Bar>
        \set guioptions-=T <Bar>
        \set guioptions-=m <bar>
    \else <Bar>
        \set guioptions+=T <Bar>
        \set guioptions+=m <Bar>
    \endif<CR>


"Vundle Settings {
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'
Bundle 'mattn/emmet-vim'
  let g:user_emmet_install_global = 0
  let g:user_emmet_leader_key = '<C-E>'
  autocmd FileType html,css EmmetInstall "Enable just for html/css
Bundle 'Auto-Pairs'
Bundle 'matchit.zip'
Bundle 'Tabular'
Bundle 'trailing-whitespace'
Bundle 'cakebaker/scss-syntax.vim'
Bundle "pangloss/vim-javascript"
Bundle "othree/html5.vim"
Bundle "beiyuu/vim-bundle-mako"
Bundle "ayang/AutoComplPop"
Bundle "vim-scripts/jinja--Yang"
Bundle "vim-scripts/jshint.vim"
Bundle "vim-scripts/vim-coffee-script"
Bundle "maksimr/vim-jsbeautify"
  nnoremap <leader>ff :call JsBeautify()<CR>

Bundle "vim-scripts/ack.vim"
Bundle "Solarized"
  colorscheme solarized
  let g:solarized_termtrans  = 1
  let g:solarized_termcolors = 256
  let g:solarized_contrast   = "high"
  let g:solarized_visibility = "high"

Bundle "ervandew/supertab"
  let g:SuperTabDefaultCompletionType = "<c-n>"

Bundle 'ctrlp.vim'
  let g:ctrlp_cmd = 'CtrlPMRU'

Bundle 'EasyMotion'
  let g:EasyMotion_leader_key = '<Leader><Leader>'

Bundle 'The-NERD-tree'
  nmap <leader>nt :NERDTree<cr>:set rnu<cr>
  let NERDTreeShowBookmarks=1
  let NERDTreeShowFiles=1
  let NERDTreeShowHidden=1
  let NERDTreeIgnore=['\.$','\~$']
  let NERDTreeShowLineNumbers=1
  let NERDTreeWinPos=0

Bundle 'The-NERD-Commenter'
  let NERDShutUp=1
  map <c-h> ,c<space>

" Bundle 'UltiSnips'
"  let g:UltiSnipsExpandTrigger="<c-j>"
"  let g:UltiSnipsJumpForwardTrigger="<c-j>"
"  let g:UltiSnipsJumpBackwardTrigger="<c-k>"

"Bundle 'FencView.vim'
  "let g:fencview_autodetect=1
"Bundle 'Valloric/YouCompleteMe'
"Bundle 'terryma/vim-multiple-cursors'
"Bundle '_jsbeautify'
  "nnoremap <leader>_ff :call g:Jsbeautify()<CR>
"Bundle 'nathanaelkane/vim-indent-guides'
  "let g:indent_guides_enable_on_vim_startup=1
  "let g:indent_guides_guide_size=1

"}
autocmd FileType python setlocal tabstop=4 shiftwidth=4 softtabstop=4

filetype plugin indent on
syntax on
