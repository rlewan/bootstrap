" Vundle setup (taken from https://github.com/VundleVim/Vundle.vim guide)
set nocompatible
filetype off

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'editorconfig/editorconfig-vim'

call vundle#end()
filetype plugin indent on

" Syntax highlighting
syntax on

" Line numbers
set number

" Highlight search matches
set hlsearch

" Underline current line
set cursorline
