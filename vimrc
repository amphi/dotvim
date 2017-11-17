execute pathogen#infect()

" Set 'nocompatible' to ward off unexpected things that your distro might
" have made, as well as sanely reset options when re-sourcing .vimrc
set nocompatible

" Attempt to determine the type of a file based on its name and possibly its
" contents. Use this to allow intelligent auto-indenting for each filetype,
" and for plugins that are filetype specific
filetype indent plugin on

" Color scheme
colo elflord

" Enable syntax highlighting
syntax on

" Better command-line completion
set wildmenu

" Use case insensitve search, except when using capital letters
set ignorecase
set smartcase

" Allow backspacing over autoindent, line breaks and start of insert action
set backspace=indent,eol,start

" When opening a new line and no filetype-specific indenting is enabled, keep
" the same indent as the line you're currently on. Useful for READMEs, etc.
set autoindent

" Stop certain movements from always going to the first character of a line.
" While this behaviour deviates from that of Vi, it does what most users
" coming from other editors would expect.
set nostartofline

" Display the cursor position on the last line of the screen or in the status
" line of a window
set ruler

" Always display the status line, even if only one window is displayed
set laststatus=2

" Instead of failing a command because of unsaved changes, instead raise a
" dialogue asking if you wish to save changed files.
set confirm

" Use visual bell instead of beeping when doinig something wrong
set visualbell

" And reset the terminal code for the visual bell. If visualbell is set, and
" this line is also included, vim will neither flash nor beep. If visualbell
" is unset, this does nothing
set t_vb=

" Enable use of the mouse for all modes
set mouse=a

" Set the command window height to two lines, to avoid many cases of having to
" "press <Enter> to continue"
set cmdheight=2

" Display line numbers on the left
set number

" Quickly time ot on keycodes, but never time out on mappings
set notimeout ttimeout ttimeoutlen=200

" Use <F11> to toggle between 'paste' and 'nopaste'
set pastetoggle=<F11>

" Indentation settings
set expandtab
set shiftwidth=4
set softtabstop=4
set tabstop=4

" Encoding
set enc=utf-8
set fenc=utf-8
set termencoding=utf-8

" Show column 110
set colorcolumn=110
highlight ColorColumn ctermbg=darkgray

set t_Co=256
set showmatch
set comments=sl:/*,mb:\ *,elx:\ */

set tags+=~/.vim/tags/cpp
set tags+=~/.vim/tags/gl
set tags+=~/.vim/tags/sdl
set tags+=~/.vim/tags/qt4

map <F4> :e %:p:s,.h$,.X123X,:s,.cpp$,.h,:s,.X123X$,.cpp,<CR>

" open nerdtree when vim starts up
" autocmd vimenter * NERDTree

" open nerdtree when vim starts up and no files are specified
" autocmd StdinReadPre * let s:std_in=1
" autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" clang-format use style file
let g:clang_format#detect_style_file=1

" F8 will toggle the tagbar window
nmap <F8> :TagbarToggle<CR>

" Airline style
let g:airline_theme='deus'

" Settings for enhanced cpp syntax highlight
let g:cpp_class_scope_highlight=1
let g:cpp_member_variable_hightlight=1
let g:cpp_class_decl_highlight=1
let g:cpp_experimental_simple_template_highlight=1
let g:cpp_concepts_highlight=1
let g:cpp_no_function_highlight=0
