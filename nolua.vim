set nocompatible            " disable compatibility to old-time vi
set showmatch               " show matching
set ignorecase              " case insensitive set mouse=v                 " middle-click paste with
set hlsearch                " highlight search
set incsearch               " incremental search set tabstop=4               " number of columns occupied by a tab
set softtabstop=4           " see multiple spaces as tabstops so <BS> does the right thing
set expandtab               " converts tabs to white space
set shiftwidth=4            " width for autoindents
set autoindent              " indent a new line the same amount as the line just typed
set number                  " add line numbers
set wildmode=longest,list   " get bash-like tab completions
set cc=80                  " set an 80 column border for good coding style
filetype plugin indent on   "allow auto-indenting depending on file type
syntax on                   " syntax highlighting
set mouse=a                 " enable mouse click
set clipboard=unnamedplus   " using system clipboard
filetype plugin on
set cursorline              " highlight current cursorline
set ttyfast                 " Speed up scrolling in Vim
" set spell                 " enable spell check (may need to download language package)
" set noswapfile            " disable creating swap file
" set backupdir=~/.cache/vim " Directory to store backup files.

call plug#begin("~/.vim/plugged")
Plug 'jiangmiao/auto-pairs'
Plug 'scrooloose/nerdtree'
Plug 'github/copilot.vim'
Plug 'neovim/nvim-lspconfig'
Plug 'Chiel92/vim-autoformat'
Plug 'fisadev/vim-isort'
Plug 'preservim/tagbar'
Plug 'ms-jpq/coq_nvim', {'branch': 'coq'}
Plug 'ms-jpq/coq.thirdparty', {'branch': '3p'}
Plug 'stsewd/isort.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'alvan/vim-closetag'
call plug#end()

" Generic key bindings
let mapleader="'"

inoremap jk <Esc>
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-y> :Autoformat<CR>
nnoremap <C-b> :TagbarToggle<CR>
nnoremap <C-j> :Isort<CR>
tnoremap <Esc> <C-\><C-n>

"Plugin
let g:coq_settings = {'auto_start': v:true}
let g:formatdef_autopep8 = '"autopep8 - --max-line-length=80"'
let g:formatters_python = ['autopep8']
let NERDTreeShowHidden=1
au BufRead *.cu set filetype=cpp

" Python
if has('nvim') && !empty($CONDA_PREFIX)
    let g:python3_host_prog = $CONDA_PREFIX . '/bin/python'
endif

" Debug
packadd termdebug
let g:termdebug_wide = 1
let g:TermDebugging = 0
au User TermdebugStartPre let g:TermDebugging = 1
au User TermdebugStopPost let g:TermDebugging = 0
