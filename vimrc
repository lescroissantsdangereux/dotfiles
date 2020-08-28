""" BEGIN plugins section """

" necessary stuff
set nocompatible
filetype off

packadd minpac
call minpac#init()
" minpac must have {'type': 'opt'} so that it can be loaded with `packadd`
call minpac#add('k-takata/minpac', {'type': 'opt'})
" plugins
" Plugin 'rking/ag.vim'
" Plugin 'kien/ctrlp.vim'
" Plugin 'airblade/vim-gitgutter.git'
" Plugin 'sjl/gundo.vim'
" Plugin 'scrooloose/nerdtree.git'
call minpac#add('tpope/vim-sensible')
call minpac#add('altercation/vim-colors-solarized')
call minpac#add('itchyny/lightline.vim')
call minpac#add('ap/vim-css-color')
call minpac#add('tpope/vim-repeat')
call minpac#add('tpope/vim-speeddating')
call minpac#add('tpope/vim-surround')
call minpac#add('tpope/vim-unimpaired')

filetype plugin indent on
""" END plugins section """

syntax enable
set pastetoggle=<F2>
set background=dark
let g:solarized_termcolors=256
colorscheme solarized
set number
set hlsearch

"4 is the one true tab width... 
set tabstop=4 
set softtabstop=4 
set shiftwidth=4
" ...but let's use spaces instead
set expandtab

"don't be annoying when switching away from buffers with unsaved changes
set hidden 
"turn off the annoying-ass error bell
set vb t_vb=

" Yank text to the OS X clipboard
noremap <leader>y "*y
noremap <leader>yy "*Y

"restore cursor position
if has("autocmd")
  au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
    \| exe "normal! g'\"" | endif
endif

" makes lightline look neater
set noshowmode
"set laststatus=2
