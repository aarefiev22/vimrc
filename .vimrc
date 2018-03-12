set nocompatible
filetype off

set rtp+=~/.vim/bundle/vundle

call vundle#rc()

filetype plugin indent on

Bundle 'scrooloose/nerdtree'

Plugin 'tpope/vim-fugitive'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

Bundle 'lokaltog/vim-easymotion'
Bundle 'fatih/vim-go.git'
Bundle 'Valloric/YouCompleteMe'
Bundle 'christoomey/vim-tmux-navigator'
Bundle 'altercation/vim-colors-solarized'

Bundle "Shougo/vimshell.vim"
Bundle "Shougo/vimproc.vim"
Bundle "sebdah/vim-delve"

""""""""""""""""""""""""""""""""""""""""""
"	easymotion

" <Leader>f{char} to move to {char}
map  <Leader>f <Plug>(easymotion-bd-f)
nmap <Leader>f <Plug>(easymotion-overwin-f)

" s{char}{char} to move to {char}{char}
nmap s <Plug>(easymotion-overwin-f2)

" Move to line
map <Leader>L <Plug>(easymotion-bd-jk)
nmap <Leader>L <Plug>(easymotion-overwin-line)

" Move to word
map  <Leader>w <Plug>(easymotion-bd-w)
nmap <Leader>w <Plug>(easymotion-overwin-w)

"""""""""""""""""""""""""""""""""""""""""
"         colors-solarized
" Some settings to enable the theme:
set number        " Show line numbers
syntax enable     " Use syntax highlighting
set background=dark
"let g:solarized_termcolors = 256
let g:solarized_termtrans = 1
colorscheme solarized

"""""""""""""""""""""""""""""""""""""""""
"         nerdTree

" close NERDTree after a file is opened
let g:NERDTreeQuitOnOpen=1
" show hidden files in NERDTree
let NERDTreeShowHidden=1
" Toggle NERDTree
nmap <silent> <leader>t :NERDTreeToggle<cr>
" expand to the path of the file in the current buffer
nmap <silent> <leader>y :NERDTreeFind<cr>

"""""""""""""""""""""""""""""""""""""""""

set backspace=indent,eol,start
