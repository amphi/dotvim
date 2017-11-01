execute pathogen#infect()

set enc=utf-8
set fenc=utf-8
set termencoding=utf-8

set nocompatible
set autoindent
set smartindent
set tabstop=4
set shiftwidth=4
set expandtab

set colorcolumn=110
highlight ColorColumn ctermbg=darkgray

set t_Co=256
syntax on
set number
set showmatch
set comments=sl:/*,mb:\ *,elx:\ */

set tags+=~/.vim/tags/cpp
set tags+=~/.vim/tags/gl
set tags+=~/.vim/tags/sdl
set tags+=~/.vim/tags/qt4

map <F4> :e %:p:s,.h$,.X123X,:s,.cpp$,.h,:s,.X123X$,.cpp,<CR>
filetyp plugin indent on
