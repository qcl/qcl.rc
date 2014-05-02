set nocompatible

" auto install vundle
" require git
let iCanHazVundle=1
let vundle_readme=expand('~/.vim/bundle/vundle/README.md')
if !filereadable(vundle_readme)
    echo "Installing Vundle.."
    echo ""
    silent !mkdir -p ~/.vim/bundle
    silent !git clone https://github.com/gmarik/vundle ~/.vim/bundle/vundle
    let iCanHazVundle=0
endif

" qcl's personal settings
set nu
set background=dark
set tabstop=4
set expandtab
set shiftwidth=4
set autoindent
set backspace=indent,eol,start
syntax on

" MacBook Air Keyboard mapping
"if has("mac")
map <ESC>[H <Home>
map <ESC>[F <End>
imap <ESC>[H <C-O><Home>
imap <ESC>[F <C-O><End>
cmap <ESC>[H <Home>
cmap <ESC>[F <End>
"endif

" vundle setting
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let vundle manage vundle, required
Bundle 'gmarik/vundle'
" original repos on Github
Bundle 'tpope/vim-fugitive'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
Bundle 'tpope/vim-rails.git'
Bundle 'nathanaelkane/vim-indent-guides'
Bundle 'Lokaltog/vim-powerline'
Bundle 'Shougo/neocomplete.vim'
" vim-scripts repos
Bundle 'L9'
Bundle 'FuzzyFinder'
Bundle 'AutoComplPop'

" powerline
set laststatus=2
let g:Powerline_symbols = 'unicode'

filetype plugin indent on     " required!

"vim-indent-guides
let g:indent_guides_auto_colors = 0
hi IndentGuidesOdd  guibg=red   ctermbg=3
hi IndentGuidesEven guibg=green ctermbg=4

" colorscheme settings
set t_Co=256
"colorscheme ir_black_p


