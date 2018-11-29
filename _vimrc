filetype off

" Dir for Vundle
set rtp+=F:/Vim/vimfiles/bundle/vundle/
call vundle#rc('F:/Vim/vimfiles/bundle/')
Bundle 'gmarik/vundle'
filetype plugin indent on
" original repos on github<br>Bundle 'mattn/zencoding-vim'
Bundle 'drmingdrmer/xptemplate'

"""""""""""""""""""""Plugin
" vim-scripts repos
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'
Plugin 'honza/vim-snippets'
Plugin 'vim-airline/vim-airline'
Plugin 'elixir-editors/vim-elixir'
Plugin 'scrooloose/nerdtree'
""""""""""""""""""""""""""""""""

filetype plugin indent on
set number
set smartindent 
set smarttab 
set expandtab 
set tabstop=4 
set softtabstop=4 
set shiftwidth=4 
set backspace=2
set hls
:set encoding=utf-8
:syntax on
filetype plugin on

""""""""""""""""""""""
"Quickly Run
""""""""""""""""""""""
map <F5> :call CompileRunGcc()<CR>
func! CompileRunGcc()
    exec "w"
    if &filetype == 'c'
        exec "!gcc % -o %<"
    elseif &filetype == 'cpp'
        exec "!g++ % -o %<"
    elseif &filetype == 'python'
        exec "!python3 %"
    elseif &filetype == 'go'
        exec "!go build %"
        exec "!go run %"
    elseif &filetype == 'exs'
        exec "!elixir %"
    elseif &filetype == 'js'
        exec "!node %"
    elseif &filetype == 'php'
        exec "!php5 %"
    endif
endfunc

"""""""""""""""""file tree  
" NERDTree
map <C-p> :NERDTreeToggle
" o fold/expand
" C set pwd to root
" u ../
"""""""""""""""""


"If Linux, del the comments
"syntax enable
"set background=dark
"colorscheme solarized

set pythonthreedll=python36.dll
