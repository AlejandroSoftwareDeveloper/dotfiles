map <silent><leader>rc :e $RC<CR> 
map <silent><leader>so :source $RC<CR>
map <leader>q :q <CR>
map <leader>w :w<CR>
map  <silent> bd  :bdelete!<CR>
nmap <silent><CR><CR> :bnext<CR>
nmap <silent><BS><BS> :bprev<CR>
" nnoremap all ggVG    " Para trabajar con scheme

nnoremap <silent><leader>b <cmd>b <tab><CR>
nnoremap <silent><F4> :wa \| vertical botright term ++kill=term<CR>  
" map <F4> :Lex! <bar> vertical resize 60 <CR>
"Se puede abreviar    vert     bot      term
"o
" nnoremap <F5> :wa <CR> :vert bot term ++kill=term<CR> 
" nnoremap <silent><F4> :wa \| vertical botright term ++kill=term<CR>   "
" Ultima version antes de usar F4

map <silent> <F8> :TagbarToggle<CR>
map tt :tabnew<CR>
map tc :tabclose<CR>
map tn :tabnext<CR>
map tp :tabprev<CR>
map <leader>u  :UndotreeShow<CR>
map <silent>rg  :Rg<space>
map <silent>noh :noh<CR>

" CtrlP
nnoremap <silent><F9> :CtrlP<CR> 
nnoremap <silent><F10> :CtrlPBuffer<CR> 

" FZF
" nnoremap <silent><F9> :Files<CR> 
" nnoremap <silent><F10> :Lines<CR>
" nnoremap <silent><F11> :Buffers<CR>

nnoremap <C-l> <C-w>l
nnoremap <C-k> <C-w>k
nnoremap <C-j> <C-w>j
nnoremap <C-h> <C-w>h

inoremap jk <Esc> 
nnoremap <C-s> <cmd>w<CR>
" nnoremap <silent><C-Up> :resize -2 <CR>
" nnoremap <silent><C-Down> :resize +2 <CR>
nnoremap <silent><C-Left> :vertical resize -2 <CR>
nnoremap <silent><C-Right> :vertical resize +2 <CR>

nnoremap <silent><C-d> <C-d>zz
nnoremap <silent><C-u> <C-u>zz

"Para mover linea de arriba a abajo
"Para modo normal
nnoremap <A-j> :m .+1<CR>==
nnoremap <A-k> :m .-2<CR>==
"Para modo insertar
inoremap <A-j> <Esc>:m .+1<CR>==gi
inoremap <A-k> <Esc>:m .-2<CR>==gi
"Para modo visual
vnoremap <A-j> :m '>+1<CR>gv=gv
vnoremap <A-k> :m '<-2<CR>gv=gv
"Para mover linea de arriba a abajo

" Navegar enter buffer
nnoremap <silent><Tab> :bnext<CR>
nnoremap <silent><S-Tab> :bprev<CR>

nnoremap <silent><leader>e :NERDTreeToggle <CR>

