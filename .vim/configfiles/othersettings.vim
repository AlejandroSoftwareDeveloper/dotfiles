function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

call quickui#menu#reset()
" Add QuickUi menu Plugins
call quickui#menu#install('&Plugins', [
            \ [ '&NerdTree', 'NERDTreeToggle' ],
            \ [ '&Vista', 'Vista!!' ],
            \ [ '&Startify', 'Startify' ],
            \ [ 'Check &Grammar', 'GrammarousCheck' ],
            \ [ 'Reset G&rammar', 'GrammarousReset' ],
            \ ])
" Add QuickUi menu View
call quickui#menu#install('&View', [
            \ [ '&Buffers', "call quickui#tools#list_buffer('e')" ],
            \ [ '&Terminal', 'terminal' ],
            \ [ '&Split terminal', 'sp +terminal' ],
            \ ])
call quickui#menu#install('&Help', [
            \ [ '&Index', "help index | only" ],
            \ [ '&Tutorial', "Tutor" ],
            \ [ '&Ale', "help ale | only" ],
            \ [ '&Anyfold', "help anyfold | only" ],
            \ [ '&EasyMotion', "help easymotion | only" ],
            \ [ '&NerdTree', "help nerdtree | only" ],
            \ [ '&Snippets', "help snippets | only" ],
            \ ])
" ------------------
" Keyboard shortcuts
" ------------------
" Show QuickUI menu
noremap <silent><M-m> :call quickui#menu#open()<cr>

" Show QuickUI list of buffers
" <C-b> era el keymap por defecto
noremap <silent><F11> :call quickui#tools#list_buffer('e')<cr>

augroup filetypedetect
    autocmd BufNewFile,BufRead *.js
            \set smartindent
            \set expandtab
            \set shiftwidth=12
            \set tabstop=12
            \set softtabstop=12
augroup END

augroup filetypedetect
    autocmd BufNewFile,BufRead *.py,*.pyx
            \set smartindent
            \set expandtab
            \set shiftwidth=4
            \set tabstop=4
            \set softtabstop=4
augroup END
nnoremap <silent> <C-q> :Bdelete menu:<:<nop> <nop> <nop> <nop> <nop> <nop> cr>

" Validar como se usa correctamente
"autocmd FileType html set 
"omnifunc=htmlcomplete#CompleteTags

" Comando para formatear cualquier pagina
" gg=G

