set wrap
syntax enable
set hlsearch
set tabstop=4
set shiftwidth=4
set softtabstop=4
set nocompatible
set ttyfast
set mouse=a
" set laststatus=2
" set statusline+=%F
set title
let &titleold=hostname()
set ruler

" Solarized
set background=dark
colorscheme solarized
set number
" Stuff to make Solarized work right
if has("terminfo")
  let &t_Co=16
  let &t_AB="\<Esc>[%?%p1%{8}%<%t%p1%{40}%+%e%p1%{92}%+%;%dm"
  let &t_AF="\<Esc>[%?%p1%{8}%<%t%p1%{30}%+%e%p1%{82}%+%;%dm"
else
  let &t_Co=16
  let &t_Sf="\<Esc>[3%dm"
  let &t_Sb="\<Esc>[4%dm"
endif

" Splits
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
set splitbelow
set splitright

" Save and execute current buffer
map <F5> :w<CR>:!%:p<CR>

" Hide highlights
nnoremap <F3> :noh<CR>

" Search and replace word under cursor using F4
nnoremap <F4> :%s/<c-r><c-w>/<c-r><c-w>/gc<c-f>$F/i
vnoremap * y/<C-R>"<CR>

" Scroll buffers with ctrl n/p
:nnoremap <C-n> :bnext<CR>
:nnoremap <C-p> :bprevious<CR>

" Quick double ; to Esc
map! ;; <Esc>

" # line with F11, remove with F12
map <F11> :s/^/#/<CR>:noh<CR>
map <F12> :s/^#//<CR>:noh<CR>

autocmd FileType python setlocal expandtab
