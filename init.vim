syntax on
set number
set mouse=a
set numberwidth=4
set clipboard=unnamed
set encoding=utf-8
set nowrap
set showcmd
set cmdheight=1
set pumheight=12
set showmatch
" set nohlsearch
set incsearch
set ignorecase
set smartcase
set tabstop=2
set softtabstop=2
set shiftwidth=2
set splitbelow
set splitright
set expandtab
set smartindent
set scrolloff=5
set termguicolors
set signcolumn=yes
set completeopt=menuone,noinsert,noselect
set noswapfile
set undofile
set background=dark
set cursorline
set laststatus=3
" set noshowmode
set shortmess+=c

let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif
call plug#begin('~/.local/share/nvim/plugged')
Plug 'morhetz/gruvbox'
Plug 'preservim/nerdtree'
Plug 'jiangmiao/auto-pairs'
call plug#end()

colorscheme gruvbox

highlight CursorLineNR guibg=NONE
highlight LineNr guifg=#5EACD3
highlight Normal guibg=NONE

let NERDTreeShowHidden=1
let NERDTreeQuitOnOpen=0
let NERDTreeAutoDeleteBuffer=1
let NERDTreeMinimalUI=1
let NERDTreeDirArrows=1
let NERDTreeShowLineNumbers=0
let NERDTreeMapOpenInTab='\t'
let mapleader=" "

nnoremap <leader>w :w<CR>
nnoremap <leader>q :q<CR>
nnoremap <leader>Q :q!<CR>
nnoremap <C-h> <C-w>h<CR>
nnoremap <C-j> <C-w>j<CR>
nnoremap <C-k> <C-w>k<CR>
nnoremap <C-l> <C-w>l<CR>
nnoremap <C-a> ggVG
nnoremap Y y$
nnoremap <leader>h :nohl<CR>
nnoremap <leader>e :NERDTreeToggle<CR>

inoremap <C-h> <Left>
inoremap <C-j> <Down>
inoremap <C-k> <Up>
inoremap <C-l> <Right>

vnoremap < <gv
vnoremap > >gv
vnoremap J :m '>+1<CR>gv-gv
vnoremap K :m '<-2<CR>gv-gv

fun! TrimWhiteSpace()
  let l:save = winsaveview()
  keeppatterns %s/\s\+$//e
  call winrestview(l:save)
endfun

augroup ANMAC
  autocmd!
  autocmd BufWritePre * :call TrimWhiteSpace()
augroup END

" Close the tab if NERDTree is the only window remaining in it.
autocmd BufEnter * if winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif
