"set guifont=*				#Descomentar y hacer source para mostrar interfaz de fuentes
"Variables de entorno

let $RTP=split(&runtimepath,',')[0]
if has('gui_gtk2') || has('gui_gtk3')
    let $RC="$HOME/.vimrc"
    set guifont=JetBrainsMono\ Nerd\ Font\ Mono\ 13
else
    let $RC="$HOME/_vimrc"
    set guifont=JetBrainsMono\ NFM:h14
    " set guifont=Consolas:h11:cANSI
    " set guifont=DejaVu\ Sans\ Mono:h12
    
    "Para entrar en modo full screen automaticamente en window
    " autocmd  GUIEnter * simalt ~x
endif

"Tecla leader
let mapleader=" "

" Configuracion netrw
let g:netrw_liststyle=3 
let g:netrw_browse_split=4
let g:netrw_winsize=25  
let g:netrw_banner= 0  

let g:slime_target="vimterminal"
let g:nnn#set_default_mappings = 0
let g:ale_completion_enabled = 1
let c_no_curly_error=1

" Show QuickUi menus tooltips
let g:quickui_show_tip = 1
" Set QuickUi menus theme to papercolor dark   'papercol dark'  "solarized light'
let g:quickui_color_scheme =  'papercol dark'
" Set QuickUi menus border style
let g:quickui_border_style = 2

let g:user_emmet_mode="n"
let g:user_emmet_leader_key=","

if has("gui_running")
   " Muestra y esconde el menu con la tecla F7
   nnoremap <F7> :if &go=~#'m'<Bar>set go-=m<Bar>else<Bar>set go+=m<Bar>endif<CR>
endif

" close tags configuration

" :CloseTagToggleBuffer
" :CloseTagEnableBuffer
" :CloseTagDisableBuffer
" filenames like *.xml, *.html, *.xhtml, ...
" These are the file extensions where this plugin is enabled.

let g:closetag_filenames = '*.html,*.xhtml,*.phtml,*.vue,*.blade'

" filenames like *.xml, *.xhtml, ...
" This will make the list of non-closing tags self-closing in the specified files.
"
let g:closetag_xhtml_filenames = '*.xhtml,*.jsx,*.vue,*.blade'

" filetypes like xml, html, xhtml, ...
" These are the file types where this plugin is enabled.
"
let g:closetag_filetypes = 'html,xhtml,phtml,vue,blade'

" filetypes like xml, xhtml, ...
" This will make the list of non-closing tags self-closing in the specified files.
"
let g:closetag_xhtml_filetypes = 'xhtml,jsx,vue,blade'

" integer value [0|1]
" This will make the list of non-closing tags case-sensitive (e.g. `<Link>` will be closed while `<link>` won't.)
"
let g:closetag_emptyTags_caseSensitive = 1

" dict
" Disables auto-close if not in a "valid" region (based on filetype)
"
let g:closetag_regions = {
    \ 'typescript.tsx': 'jsxRegion,tsxRegion',
    \ 'javascript.jsx': 'jsxRegion',
    \ 'typescriptreact': 'jsxRegion,tsxRegion',
    \ 'javascriptreact': 'jsxRegion',
    \ }

" Shortcut for closing tags, default is '>'
"
let g:closetag_shortcut = '>'

" Add > at current position without closing the current tag, default is ''
"
let g:closetag_close_shortcut = '<leader>>'

let g:closetag_enable_react_fragment = 1
" Disable closing tags for React fragments -> <></> for all supported file types

let g:closetag_enable_react_fragment = 0
