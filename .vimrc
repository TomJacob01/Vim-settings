"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""              
"               
"               ██╗   ██╗██╗███╗   ███╗██████╗  ██████╗
"               ██║   ██║██║████╗ ████║██╔══██╗██╔════╝
"               ██║   ██║██║██╔████╔██║██████╔╝██║     
"               ╚██╗ ██╔╝██║██║╚██╔╝██║██╔══██╗██║     
"                ╚████╔╝ ██║██║ ╚═╝ ██║██║  ██║╚██████╗
"                 ╚═══╝  ╚═╝╚═╝     ╚═╝╚═╝  ╚═╝ ╚═════╝
"               
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""               
set nocompatible
filetype plugin on
syntax on
set number
set textwidth=79
set cursorline
set nobackup
set incsearch
set smartcase
set showcmd
set showmode
set showmatch
set hlsearch
set wildmenu

"" Indendtaion settings----------------------------------------------------{{{
set cindent
" Set the number of spaces per tab
set tabstop=3
set softtabstop=3
set shiftwidth=3

" Enable smart indentation
set smartindent
set autoindent

" Indentation settings for specific file types
autocmd FileType python setlocal expandtab tabstop=3 softtabstop=3 shiftwidth=3

" Show existing tabs and trailing whitespace
set listchars=tab:▸\ ,trail:·
set list

" Highlight excessive whitespace
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
" }}}
" PLUGINS ---------------------------------------------------------------- {{{
call plug#begin('~/.vim/plugged')
Plug 'dense-analysis/ale'
call plug#end()

 " }}}
" MAPPINGS --------------------------------------------------------------- {{{
" }}}
" VIMSCRIPT -------------------------------------------------------------- {{{
" This will enable code folding.
" Use the marker method of folding.
augroup filetype_vim
    autocmd!
    autocmd FileType vim setlocal foldmethod=marker
augroup END

" }}}

set background=dark
colorscheme PaperColor
