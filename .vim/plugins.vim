call plug#begin('~/.vim/plugged')
    Plug 'vim-airline/vim-airline'
    Plug 'jiangmiao/auto-pairs'
    Plug 'ludovicchabant/vim-gutentags'
    Plug 'Yggdroot/indentLine'
    Plug 'luochen1990/rainbow'
    Plug 'thindil/robovim'
    Plug 'mhinz/vim-startify'
    " Plug 'liuchengxu/vista.vm'
    Plug 'pseewald/vim-anyfold'
    Plug 'dbeniamine/todo.txt-vim'
    Plug 'preservim/tagbar'       , { 'on' : 'TagbarToggle' }
    Plug 'bfrg/vim-cpp-modern'    , { 'for' : 'cpp' }
    Plug 'tpope/vim-surround'                                   "Surround ysw) o cstt para cambiar las etiquetas por otras etiquetas
    Plug 'tpope/vim-commentary'                                 "For comment gcc & gc
    Plug 'ervandew/supertab'
    Plug 'kien/ctrlp.vim'
    Plug 'preservim/nerdtree'
    Plug 'ghifarit53/tokyonight-vim'
    Plug 'skywind3000/vim-quickui'
    Plug 'chriskempson/base16-vim' 
    Plug 'vimwiki/vimwiki'
    
   "" Configuraciones del editor
    Plug 'sheerun/vim-polyglot'
    Plug 'w0rp/ale'
    Plug 'dense-analysis/ale'
   
    "" Utlities
    Plug 'tmsvg/pear-tree'
    Plug 'alvan/vim-closetag'
    Plug 'tpope/vim-endwise'
    Plug 'Asheq/close-buffers.vim'

    "" Emsamblador
   Plug 'maxbane/vim-asm_ca65'	
   Plug 'digarok/asmMerlin65816.vim' ,  { 'for' : 'asm'  }

   "" REPL
   Plug 'kovisoft/slimv'
   Plug 'jpalardy/vim-slime'
   

   source $HOME/dotfiles/.vim/uninstalled_plugins.vim

call plug#end()

