call plug#begin('~/.vim/plugged')
    Plug 'chriskempson/base16-vim' 
    Plug 'vim-airline/vim-airline'
    Plug 'marcweber/vim-addon-mw-utils'
    Plug 'tpope/vim-fugitive'
    Plug 'rhysd/vim-grammarous'
    Plug 'jiangmiao/auto-pairs'
    Plug 'ludovicchabant/vim-gutentags'
    Plug 'Yggdroot/indentLine'
    Plug 'luochen1990/rainbow'
    Plug 'thindil/robovim'
    Plug 'garbas/vim-snipmate'
    Plug 'mhinz/vim-startify'
    Plug 'liuchengxu/vista.vim'
    Plug 'tomtom/tlib_vim'
    Plug 'KabbAmine/zeavim.vim'
    Plug 'pseewald/vim-anyfold'
    Plug 'dbeniamine/todo.txt-vim'
    Plug 'mhinz/vim-signify'
    Plug 'lifepillar/vim-gruvbox8'
    Plug 'NLKNguyen/papercolor-theme'
    Plug 'preservim/tagbar'       , { 'on' : 'TagbarToggle' }
    Plug 'bfrg/vim-cpp-modern'    , { 'for' : 'cpp' }
    Plug 'tpope/vim-surround'                                   "Surround ysw) o cstt para cambiar las etiquetas por otras etiquetas
    Plug 'tpope/vim-commentary'                                 "For comment gcc & gc
    Plug 'skywind3000/vim-quickui'
    Plug 'sheerun/vim-polyglot'
    Plug 'tmsvg/pear-tree'
    Plug 'ervandew/supertab'
    Plug 'alvan/vim-closetag'
    Plug 'tpope/vim-endwise'
    Plug 'elixir-editors/vim-elixir'
    Plug 'Asheq/close-buffers.vim'
    Plug 'airblade/vim-gitgutter'
    Plug 'leafOfTree/vim-vue-plugin', { 'for' : 'vue' }
    Plug 'kien/ctrlp.vim'
    Plug 'preservim/nerdtree'
    
    " Laravel pluggins
    Plug 'tpope/vim-dispatch'           , { 'for' : 'php' }  "| Optional
    Plug 'tpope/vim-projectionist'      , { 'for' : 'php' }  "|
    Plug 'noahfrederick/vim-composer'   , { 'for' : 'php' }  "|
    Plug 'noahfrederick/vim-laravel'    , { 'for' : 'php' }

    " Clojure pluggins
    " Plug 'luochen1990/rainbow'  " Vim pluggins para clojure 
    " Plug 'guns/vim-sexp'

    """ Plugins instalados, para no borrar
   " Plug 'jremmen/vim-ripgrep'
   " Plug 'junegunn/fzf',{'do':{ -> fzf#install() } }
   " Plug 'junegunn/fzf.vim'
   " Plug 'easymotion/vim-easymotion'
   " Plug 'w0rp/ale'
   " Plug 'dense-analysis/ale'
   " Plug 'SirVer/ultisnips'
   " Plug 'honza/vim-snippets'
   " Plug 'maxbane/vim-asm_ca65'	
   " Plug 'digarok/asmMerlin65816.vim' ,  { 'for' : 'asm'  }
   " Plug 'itchyny/lightline.vim'
   " Plug 'ericbn/vim-solarized'
   " Plug 'prabirshrestha/asyncomplete-lsp.vim'
   " Plug 'prabirshrestha/vim-lsp'
   " Plug 'mattn/vim-lsp-settings'
   " Plug 'kovisoft/slimv'
   " Plug 'jpalardy/vim-slime'
   "" Ada plugins
   " Plug 'thindil/vim-ada', { 'for' : 'adb' }
   " Plug 'thindil/a.vim'
   " Plug 'thindil/Ada-Bundle'
   " Plug 'thindil/vim-xml'
call plug#end()

