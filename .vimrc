set nocompatible              " be iMproved, required
filetype off                  " required

syntax enable

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" Keep Plugin commands between vundle#begin/end.

Plugin 'tpope/vim-fugitive'

Plugin 'bling/vim-airline'
let g:airline#extensions#tabline#enabled = 1

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on

" Brief vundle help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

"Windows and Buffer Navigation
    "<f1> and <f2> for traversing buffers
    nnoremap <f1> :bp<CR>
    nnoremap <f2> :bn<CR>

    "Move aroundk open windows with jklh
    map <c-j> <c-w>j
    map <c-k> <c-w>k
    map <c-l> <c-w>l
    map <c-h> <c-w>h

"Searching ---
    "Center next search
    nnoremap n nzz
    nnoremap N Nzz

    "Use Perl regex for searching
    nnoremap / /\v
    vnoremap / /\v
    nnoremap ? ?\v
    vnoremap ? ?\v

    "Turn on highlighting for all search maches
    set hlsearch
    set incsearch


"Run :w!! to write file as root
cmap w!! w !sudo tee % >/dev/null<CR>:e!<CR><CR>

"list chars
nmap <leader>1 :set list!<CR>
set listchars=tab:~\ ,eol:¬

"Spelling
    "<f7> for spell check
    nn <f7> :setlocal spell! spelllang=en_us<CR>

    "Turn on spell check by default
    set spell


"Misc key bindings
    "<Esc> alterative
    inoremap jj <Esc>

    "<F5> to toggle paste mode (great for python copy-paste)
    nnoremap <f5> :set paste!<CR>
