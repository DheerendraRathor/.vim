set hidden
set tabstop=4 shiftwidth=4 expandtab
set number
set relativenumber
set updatetime=100
set listchars=eol:¬,tab:>·,trail:~,extends:>,precedes:<
set ignorecase
set hlsearch
set formatoptions+=j " Delete comment character when joining commented lines
set display+=lastline
set wildmenu
set complete-=i
set smarttab
set laststatus=2
set incsearch
filetype plugin indent on

" Let backspace/delete work
set backspace=2
set backspace=indent,eol,start

" Backup/Swap options
set noundofile
set backupdir=~/.vim/backup//
set directory=~/.vim/swp//

" Load Plugins using Plug.vim
call plug#begin('~/.vim/plugged')

Plug 'othree/xml.vim', {'for': 'xml'}

Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'

Plug 'pangloss/vim-javascript'

Plug 'vim-airline/vim-airline'

Plug 'tpope/vim-fugitive'

Plug 'ctrlpvim/ctrlp.vim'

Plug 'xolox/vim-session'
Plug 'xolox/vim-misc'

" Google stuff
Plug 'google/vim-searchindex'
call plug#end()

"  Airline customiations
" Enable the list of buffers
let g:airline#extensions#tabline#enabled = 1

" Show just the filename
let g:airline#extensions#tabline#fnamemod = ':t'

" Start NerdTree on vim start
" autocmd vimenter * NERDTree | wincmd p
" autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" Customizations
let mapleader = " "

nnoremap <Leader><space> :noh<CR>

"Quick file navigation
nmap <Leader>cdf :lcd %:p:h<CR>
nmap <Leader>vrc :e ~/.vim/.vimrc<CR>

" Window navigation
nmap <Leader>wl <C-w>l
nmap <Leader>wh <C-w>h
nmap <Leader>wj <C-w>j
nmap <Leader>wk <C-w>k

" Tab navigation
nmap <Leader>ts :tabs<CR>
nmap <Leader>tn :tabn<CR>
nmap <Leader>tp :tabp<CR>
nmap <Leader>tf :tabfirst<CR>
nmap <Leader>tl :tablast<CR>

" Buffer navigation
nmap <Leader>bl :bnext<CR>
nmap <Leader>bh :bprevious<CR>
nmap <Leader>bls :ls<CR>
nmap <Leader>bp :b#<CR>

" Close buffer and move to previous one
nmap <Leader>bq :bp <BAR> bd #<CR>

" Vim session configurations
set sessionoptions-=blank,options
let g:session_directory='~/.vim/sessions'
let g:session_autoload='yes'
let g:session_autosave='yes'
let g:session_autosave_periodic=0.5

nnoremap <Leader>os :OpenSession<Space>
nnoremap <Leader>ss :SaveSession<Space>
nnoremap <Leader>cs :CloseSession<Space>
nnoremap <Leader>ds :DeleteSession<Space>

" NERDTree
nnoremap <Leader>nt :NERDTreeToggle<CR>
nnoremap <Leader>f :NERDTreeFind<CR>

" Wildignore
set wildignore+=*.exe,*.zip,*/objd/**,*/obj/**,*.tmp

let g:ctrlp_custom_ignore = {
    \ 'dir': '\v[\/]\.git$'
\ }
