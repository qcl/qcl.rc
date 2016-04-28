set nocompatible


" check vundle
" auto install vundle
" require git
let iCanHazVundle=1
let vundle_readme=expand('~/.vim/bundle/Vundle.vim/README.md')
if !filereadable(vundle_readme)
    echo "Installing Vundle.."
    echo ""
    silent !mkdir -p ~/.vim/bundle
    silent !git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
    let iCanHazVundle=0
endif

" @qcli 's settings
set nu
set tabstop=4
set expandtab
set shiftwidth=4
set autoindent
set backspace=indent,eol,start
"set cursorline
set wildmenu
syntax on

" let *.md ad Markdown file
autocmd BufNewFile,BufRead *.md set filetype=markdown

" vundle setting
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'

Plugin 'itchyny/lightline.vim'

call vundle#end()
filetype plugin indent on

" for lightline
set laststatus=2
let g:lightline = { 'colorscheme': "wombat" }

" colorscheme settings
set t_Co=256
