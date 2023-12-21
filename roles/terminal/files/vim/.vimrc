" ==================== Vundle setup ====================

set nocompatible
filetype off

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'editorconfig/editorconfig-vim'
Plugin 'udalov/kotlin-vim'
Plugin 'vim-airline/vim-airline'
Plugin 'dense-analysis/ale'

call vundle#end()
filetype plugin indent on

" =============== Plugins configuration ================
let g:airline#extensions#ale#enabled = 1

" ==================== Other setup =====================

" Syntax highlighting
syntax on

" Line numbers
set number

" Highlight search matches
set hlsearch

" Underline current line
set cursorline

" Set the timeout of switching between modes to 50 ms
set ttimeoutlen=50

" Set color scheme and disable background to keep transparency
colorscheme slate
hi! Normal ctermbg=NONE guibg=NONE
hi! NonText ctermbg=NONE guibg=NONE guifg=NONE ctermfg=NONE
