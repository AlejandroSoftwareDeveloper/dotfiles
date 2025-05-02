map <silent><leader>rc :e $RC<CR> 
map <silent><leader>so :source $RC<CR>
map <leader>u  :UndotreeShow<CR>
map <silent>rg  :Rg<space>
map <silent>noh :noh<CR>
map <leader>q :q <CR>
map <leader>w :w<CR>
map <silent> bd  :bdelete!<CR>
map <silent> <F8> :TagbarToggle<CR>
map tt :tabnew<CR>
map tc :tabclose<CR>
map tn :tabnext<CR>
map tp :tabprev<CR>

" Para limpiar todos los buffers
map <leader>cb :%bd\|e#<cr>
map <silent><C-q> :bdelete!<cr>

"Para modo normal
nnoremap <A-j> :m .+1<CR>==
nnoremap <A-k> :m .-2<CR>==
"Para modo insertar
inoremap <A-j> <Esc>:m .+1<CR>==gi
inoremap <A-k> <Esc>:m .-2<CR>==gi
inoremap jk <Esc> 

"Para modo visual
vnoremap <A-j> :m '>+1<CR>gv=gv
vnoremap <A-k> :m '<-2<CR>gv=gv
"Para mover linea de arriba a abajo

" Navegar enter buffer
nnoremap <silent><Tab> :bnext<CR>
nnoremap <silent><S-Tab> :bprev<CR>
nnoremap <silent><leader>e :NERDTreeToggle <CR>

nnoremap <C-l> <C-w>l
nnoremap <C-k> <C-w>k
nnoremap <C-j> <C-w>j
nnoremap <C-h> <C-w>h

nnoremap <C-s> <cmd>w<CR>
" No uso la ventana horizontal nunca
" nnoremap <silent><C-Up> :resize -2 <CR>
" nnoremap <silent><C-Down> :resize +2 <CR>
nnoremap <silent><C-Left> :vertical resize -2 <CR>
nnoremap <silent><C-Right> :vertical resize +2 <CR>

nnoremap <silent><C-d> <C-d>zz
nnoremap <silent><C-u> <C-u>zz

"Para mover linea de arriba a abajo
nnoremap <silent><leader>b <cmd>b <tab><CR>
nnoremap <silent><F4> :wa \| vertical botright term ++kill=term<CR>  

" Reseteo del motor de sintaxis
nnoremap <F12><ESC>:syntax sync fromstart<CR>
inoremap <F12><C-o>:syntax sync fromstart<CR>
