set nocompatible              " required
filetype off                  " required
set number
"colorscheme gruvbox
set background=dark
set t_Co=256
"let g:gruvbox_italic=1
set visualbell
set laststatus=2


" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
"
" " alternatively, pass a path where Vundle should install plugins
" "call vundle#begin('~/some/path/here')
"
" " let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
"
" " add all your plugins here (note older versions of Vundle
" " used Bundle instead of Plugin)
"
Plugin 'tmhedberg/SimpylFold'
Plugin 'tpope/vim-surround'
Plugin 'vim-scripts/indentpython.vim'
Plugin 'vim-syntastic/syntastic'
Plugin 'nvie/vim-flake8'
Plugin 'jnurmine/Zenburn'
Plugin 'altercation/vim-colors-solarized'
Plugin 'Valloric/YouCompleteMe'
Plugin 'sheerun/vim-polyglot'
"Plugin 'jiangmiao/auto-pairs'
Plugin 'scrooloose/nerdtree'
Plugin 'morhetz/gruvbox'
"Plugin 'vim-airline/vim-airline'
Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
" " ...
"
" " All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

set splitbelow
set splitright

" Enable folding
set foldmethod=indent
set foldlevel=99
nnoremap <space> za

" Indentation
au BufNewFile,BufRead *.py set tabstop=4
au BufNewFile,BufRead *.py set softtabstop=4
au BufNewFile,BufRead *.py set shiftwidth=4
au BufNewFile,BufRead *.py set textwidth=79
au BufNewFile,BufRead *.py set expandtab
au BufNewFile,BufRead *.py set autoindent
au BufNewFile,BufRead *.py set fileformat=unix

" Unnecessary Whitespace
au BufRead, BufNewFile *.py match badWhitespace/\s\+$/

set encoding=utf-8

let python_highlight_all=1
syntax on
"
"if has('gui_running')
"  set background=dark
"  colorscheme solarized
"else
"  colorscheme zenburn
"endif

let g:ycm_autoclose_preview_window_after_completion=1
map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>

autocmd vimenter * colorscheme gruvbox

"autocmd vimenter * NERDTree
