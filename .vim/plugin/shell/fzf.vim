" Eliminar o comentar  esta cofiguracion si se desea poner el preview
let g:fzf_preview_window = []

let $FZF_DEFAULT_OPTS = "--layout=reverse"

nnoremap <silent><F9> :Files<CR> 
nnoremap <silent><F10> :Buffers<CR>
nnoremap <silent><F12> :Lines<CR>
map <silent><leader>ff :Files<CR>
map <silent><leader>bb :Buffers<CR>
