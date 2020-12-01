" basic
syntax on
set tabstop=4
set shiftwidth=4
set expandtab
set ai
set number
set hlsearch
set ruler
set noshowmode  
set laststatus=2
set encoding=utf-8
set wildignorecase
scriptencoding=utf-8
set smartcase
set incsearch hlsearch

" misc
set nobackup
set clipboard=unnamedplus
set noswapfile
set noerrorbells

" set ignorecase


" Source coc vim settings
so $HOME/.vim/coc-vim.vim

" *********************************** Plugins **************************
call plug#begin('~/.vim/plugged')
Plug 'neoclide/coc.nvim', {'do': 'yarn install --frozen-lockfile'}
Plug 'dracula/vim', { 'name': 'dracula'  }
Plug 'tpope/vim-commentary'
Plug 'sheerun/vim-polyglot'
Plug 'vim-python/python-syntax' 
Plug 'jiangmiao/auto-pairs'
Plug 'itchyny/lightline.vim'
Plug 'mhinz/vim-startify'
Plug 'mattn/emmet-vim'
Plug 'tpope/vim-surround'
" Plug 'chrisbra/Colorizer'
Plug 'turbio/bracey.vim'
call plug#end()
" *********************************** End *******************************

" THEME SETUP
let g:dracula_italic = 0
colorscheme dracula
" set termguicolors
highlight Normal ctermbg=None

let g:lightline = {
      \ 'colorscheme': 'olivia',
      \}

" SYNTAX SETUP
let g:polyglot_disabled = ['python']
let g:polyglot_disabled = ['python-compiler']
let g:polyglot_disabled = ['python-indent']
let g:python_highlight_all = 1
let g:python_highlight_space_errors = 0
" hex ColorHighlight 

" Set good system pasting
" vmap <C-c> "+y"
