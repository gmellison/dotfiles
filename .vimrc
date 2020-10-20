set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
" Plugin 'tpope/vim-fugitive'

" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'

" include the vim-latex plugin
Plugin 'lervag/vimtex'
Plugin 'tibabit/vim-templates'

Plugin 'morhetz/gruvbox'
Plugin 'ghifarit53/tokyonight-vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required

" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" REQUIRED. This makes vim invoke Latex-Suite when you open a tex file.
filetype plugin on

" OPTIONAL: This enables automatic indentation as you type.
filetype indent on

" OPTIONAL: Starting with Vim 7, the filetype of empty .tex files defaults to
" 'plaintex' instead of 'tex', which results in vim-latex not being loaded.
" The following changes the default filetype back to 'tex':
let g:tex_flavor='latex'

let g:vimtex_compiler_latexmk = {
    \ 'options' : [
    \   '-shell-escape',
    \   '-verbose',
    \   '-file-line-error',
    \   '-synctex=1',
    \   '-interaction=nonstopmode',
    \ ],
    \}

let mapleader = ","

:set number

syntax on

if has("gui_running")
    set termguicolors
    " let g:tokyonight_enable_italic = 1
    " let g:tokyonight_disable_italic_comment = 0

    " let g:tokyonight_style = 'night' " available: night, storm

    let g:gruvbox_italic=1
    let g:gruvbox_bold=1
    let g:gruvbox_contrast_dark='hard'

    set background=dark
    colorscheme gruvbox 

else 
    "let g:tokyonight_enable_italic = 0
    "let g:tokyonight_disable_italic_comment = 1

    set background=dark 
    colorscheme gruvbox
endif


