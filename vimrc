" vim plug
" curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
" vim CoC:
" curl -sL install-node.now.sh/lts | bash

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
set wildignorecase
set colorcolumn=90
set encoding=utf-8
scriptencoding=utf-8
set smartcase
set incsearch hlsearch
" misc
set nobackup
set clipboard=unnamedplus
set noswapfile
set noerrorbells
" set ignorecase
set termguicolors 					
let &t_8f = "\<Esc>[38:2:%lu:%lu:%lum"
let &t_8b = "\<Esc>[48:2:%lu:%lu:%lum"

so $HOME/.vim/coc-vim.vim        " Source coc vim settings

" ******************** SYNTAX ********************
let g:polyglot_disabled = ['python']
let g:polyglot_disabled = ['python-compiler']
let g:polyglot_disabled = ['python-indent']
let g:python_highlight_all = 1
let g:python_highlight_space_errors = 0

" *********************************** Plugins **************************
call plug#begin('~/.vim/plugged')
" Plug 'morhetz/gruvbox'
" Plug 'tpope/vim-surround'
" Plug 'mattn/emmet-vim'
" Plug 'turbio/bracey.vim'
" Plug 'neoclide/coc.nvim', {'do': 'yarn install --frozen-lockfile'}
" Plug 'junegunn/vim-slash'
Plug 'harenome/vim-mipssyntax'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'sheerun/vim-polyglot'
Plug 'lifepillar/vim-gruvbox8'
Plug 'dracula/vim', { 'as': 'dracula'  }
Plug 'tpope/vim-commentary'
Plug 'vim-python/python-syntax' 
Plug 'jiangmiao/auto-pairs'
Plug 'itchyny/lightline.vim'
Plug 'mhinz/vim-startify'
Plug 'RRethy/vim-hexokinase'
call plug#end()
" *********************************** End *******************************

" ******************** THEME ********************
autocmd FileType java setlocal formatoptions-=c formatoptions-=r formatoptions-=o
colorscheme gruvbox8_hard
set bg=dark
highlight Normal ctermbg=None
" colorscheme dracula
" let g:dracula_italic = 0
let g:Hexokinase_highlighters = [ 'sign_column' ]
let g:lightline = {
      \ 'colorscheme': 'olivia',
      \}

" Fixes background color in Kitty
let &t_ut=''
" ******************** THEME SETUP ********************

" Functions & remaps
function ReplaceSearch (text)
      execute "%s//" . a:text . "/g"
endfunction

" Scroll n lines Ctrl-d Ctrl-u
set scroll=10

" sudo write
command! -nargs=0 Sw w !sudo tee % > /dev/null
" Jump back to pos with ''
nnoremap ' `
