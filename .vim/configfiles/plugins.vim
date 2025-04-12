call plug#begin('~/.vim/plugged')
    Plug 'vim-airline/vim-airline'
    Plug 'jiangmiao/auto-pairs'
    Plug 'ludovicchabant/vim-gutentags'
    Plug 'Yggdroot/indentLine'
    Plug 'luochen1990/rainbow'
    Plug 'thindil/robovim'
    Plug 'mhinz/vim-startify'
    Plug 'mhinz/vim-signify'
    Plug 'preservim/tagbar'       , { 'on' : 'TagbarToggle' }
    Plug 'bfrg/vim-cpp-modern'    , { 'for' : 'cpp' }
    Plug 'tpope/vim-surround'                                   "Surround ysw) o cstt para cambiar las etiquetas por otras etiquetas
    Plug 'tpope/vim-commentary'                                 "For comment gcc & gc
    Plug 'sheerun/vim-polyglot'
    Plug 'tmsvg/pear-tree'
    Plug 'ervandew/supertab'
    Plug 'alvan/vim-closetag'
    Plug 'tpope/vim-endwise'
    Plug 'elixir-editors/vim-elixir'
    Plug 'Asheq/close-buffers.vim'
    Plug 'airblade/vim-gitgutter'
    Plug 'preservim/nerdtree'
    Plug 'ghifarit53/tokyonight-vim'
    Plug 'junegunn/fzf',{'do':{ -> fzf#install() } }
    Plug 'junegunn/fzf.vim'
    Plug 'mattn/emmet-vim'
    Plug 'jpalardy/vim-slime'
    Plug 'editorconfig/editorconfig-vim' 
    Plug 'junegunn/goyo.vim'
   " Plug 'w0rp/ale'
   " Plug 'dense-analysis/ale'
   "
   " Plug 'prabirshrestha/asyncomplete-lsp.vim'
   " Plug 'prabirshrestha/vim-lsp'
   " Plug 'mattn/vim-lsp-settings'
   " Plug 'kovisoft/slimv'

call plug#end()
