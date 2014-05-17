""" BEGIN plugins section """

" necessary stuff
set nocompatible
filetype off

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" plugins
Plugin 'gmarik/Vundle.vim'
Plugin 'bling/vim-airline'
Plugin 'rking/ag.vim'
Plugin 'kien/ctrlp.vim'
Plugin 'airblade/vim-gitgutter.git'
Plugin 'sjl/gundo.vim'
Plugin 'scrooloose/nerdtree.git'
Plugin 'tpope/vim-sensible.git'
Plugin 'garbas/vim-snipmate'
Plugin 'scrooloose/syntastic.git'
Plugin 'godlygeek/tabular.git'
Plugin 'majutsushi/tagbar.git'
Plugin 'tomtom/tcomment_vim.git'
Plugin 'tomtom/tlib_vim.git'
Plugin 'MarcWeber/vim-addon-mw-utils.git'
Plugin 'altercation/vim-colors-solarized.git'
Plugin 'ap/vim-css-color'
Plugin 'Lokaltog/vim-easymotion.git'
Plugin 'tpope/vim-eunuch.git'
Plugin 'tpope/vim-fugitive.git'
Plugin 'terryma/vim-multiple-cursors.git'
Plugin 'tpope/vim-repeat.git'
Plugin 'tpope/vim-speeddating.git'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-unimpaired.git'

" All of your Plugins must be added before the following line
" (more necessary stuff)
call vundle#end()
filetype plugin indent on
""" END plugins section """

syntax enable
set pastetoggle=<F2>
set background=dark
colorscheme solarized
set number
set hlsearch

"4 is the one true tab width
set tabstop=4 
set shiftwidth=4
"don't be annoying when switching away from buffers with unsaved changes
set hidden 
"turn off the annoying-ass error bell
set vb t_vb=

" Quickly reload the vimrc file
nmap <silent> <Leader>v :so $MYVIMRC<CR>

" Yank text to the OS X clipboard
noremap <leader>y "*y
noremap <leader>yy "*Y

"""set up keyboard shortcuts for plugins
nmap <silent> <F3> :NERDTreeToggle<CR>

nnoremap <F4> :GundoToggle<CR>

"shortcut for Tabularize
nmap <Leader>t :Tabularize<Space>/

"CtrlP shortcuts
let g:ctrlp_cmd = 'CtrlPMixed'
nmap <silent> <F5> :ls<CR>
nnoremap <silent> <Leader>l :CtrlPLine<CR>

"easymotion
let g:EasyMotion_do_mapping = 0 " Disable default mappings
map <Leader>s <Plug>(easymotion-s2)
map <Leader>n <Plug>(easymotion-next)
map <Leader>N <Plug>(easymotion-prev)
map <Leader>j <Plug>(easymotion-bd-jk)
map <Leader>k <Plug>(easymotion-bd-jk)
map <Leader>w <Plug>(easymotion-bd-w)
map <Leader>b <Plug>(easymotion-bd-w)

"tagbar 
nmap <silent> <F8> :TagbarToggle<CR>
"switch keyboard focus to tagbar when you open it
let g:tagbar_autofocus = 1

"show hidden files in ctrlp
let g:ctrlp_show_hidden = 1

"restore cursor position
if has("autocmd")
  au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
    \| exe "normal! g'\"" | endif
endif

"don't show the default mode indicator. this makes airline look neater
set noshowmode

"gui: set a font capable of rendering powerline symbols (for airline)
if has('gui_running')
  set guifont=Sauce\ Code\ Powerline:h14
endif

"get powerline symbols in airline
let g:airline_powerline_fonts = 1

"enable airline's tabline functionality
let g:airline#extensions#tabline#enabled = 1

let g:EasyMotion_smartcase = 1
