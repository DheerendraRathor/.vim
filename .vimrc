set hidden
set tabstop=4 shiftwidth=4 expandtab

" Let backspace/delete work
set backspace=2
set backspace=indent,eol,start

" Keep track of open buffers in viminfo
set viminfo^=%

" Backup/Swap options
set noundofile
set backupdir=~/.vim/backup//
set directory=~/.vim/swp//

" Load Plugins using Plug.vim
call plug#begin('~/.vim/plugged')

Plug 'junegunn/vim-easy-align'
Plug 'othree/xml.vim', {'for': 'xml'}

Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'

Plug 'pangloss/vim-javascript'

Plug 'vim-airline/vim-airline'

call plug#end()

"  Airline customiations
" Enable the list of buffers
let g:airline#extensions#tabline#enabled = 1

" Show just the filename
let g:airline#extensions#tabline#fnamemod = ':t'

" Start NerdTree on vim start
autocmd vimenter * NERDTree | wincmd p
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" Customizations
:let mapleader = " "

" Window navigation
nmap <Leader>wl <C-w>l
nmap <Leader>wh <C-w>h

" Buffer navigation
nmap <Leader>bl :bnext<CR>
nmap <Leader>bh :bprevious<CR>
nmap <Leader>bls :ls<CR>

" Close buffer and move to previous one
nmap <Leader>bq :bp <BAR> bd #<CR>

" NERDTree
nnoremap <Leader>nt :NERDTreeToggle<CR>
nnoremap <Leader>f :NERDTreeFind<CR>
