set nocompatible

" auto install vundle
" require git
let iCanHazVundle=1
let vundle_readme=expand('~/.vim/bundle/Vundle.vim/README.md')
if !filereadable(vundle_readme)
    echo "Installing Vundle.."
    echo ""
    silent !mkdir -p ~/.vim/bundle
    silent !git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
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
set showcmd
set cursorline
set wildmenu
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

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let vundle manage vundle, required
Plugin 'VundleVim/Vundle.vim'

" original repos on Github
" git related, used by lightline
Plugin 'tpope/vim-fugitive'

"Plugin 'Lokaltog/vim-easymotion'

" type html tag than press ctrl+e
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}

" Plugin 'tpope/vim-rails.git'
Plugin 'nathanaelkane/vim-indent-guides'

" shows status line
Plugin 'itchyny/lightline.vim'

Plugin 'mattn/emmet-vim'
Plugin 'othree/html5.vim'
Plugin 'othree/javascript-libraries-syntax.vim'
Plugin 'Rykka/colorv.vim'
" needed for fetching schemes online.
Plugin 'mattn/webapi-vim'
" Plugin 'Shougo/neocomplete.vim'
" Plugin 'Shougo/context_filetype.vim'
" vim-scripts repos
Plugin 'L9'
Plugin 'FuzzyFinder'
Plugin 'AutoComplPop'
" Plugin 'jQuery'

call vundle#end()

"" powerline
"set laststatus=2
"let g:Powerline_symbols = 'unicode'

" lightline
set laststatus=2
let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'fugitive', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component': {
      \   'readonly': '%{&filetype=="help"?"":&readonly?"⭤":""}',
      \   'modified': '%{&filetype=="help"?"":&modified?"+":&modifiable?"":"-"}',
      \   'fugitive': '%{exists("*fugitive#head")?fugitive#head():""}'
      \ },
      \ 'component_visible_condition': {
      \   'readonly': '(&filetype!="help"&& &readonly)',
      \   'modified': '(&filetype!="help"&&(&modified||!&modifiable))',
      \   'fugitive': '(exists("*fugitive#head") && ""!=fugitive#head())'
      \ },
      \ 'separator': { 'left': '⮀', 'right': '⮂' },
      \ 'subseparator': { 'left': '⮁', 'right': '⮃' }
      \ }

"vim-indent-guides
let g:indent_guides_auto_colors = 0
hi IndentGuidesOdd  guibg=red   ctermbg=3
hi IndentGuidesEven guibg=green ctermbg=4


filetype plugin indent on     " required!


" colorscheme settings
set t_Co=256
"colorscheme ir_black_p

"emmet
let g:user_emmet_install_global = 0
autocmd FileType html,css EmmetInstall

"neocomplete
let g:neocomplete#enable_at_startup = 1

let g:used_javascript_libs = 'underscore,backbone,jquery'
