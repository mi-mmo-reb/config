"filetype plugin on
set nocompatible
set softtabstop=2
set shiftwidth=4
set scrolloff=999  "to keep the cursor vertical centered
syntax on
filetype indent on
set autoindent
set foldenable  "Enable folding
set foldlevelstart=10 "open a max of 10 folder at the beginning
set foldnestmax=10
set foldmethod=indent
set foldcolumn=2
set nobackup
colorscheme elflord
set cursorline
"highlight CursorLine guibg=orange ctermbg=lightgrey
set nu
set laststatus=2
set statusline=%F%m%r%h%w%=(%{&ff}/%Y)\ (line\ %l\/%L,\ col\ %c)\
set wildmenu
set directory=$HOME/.vim/swp// " save all the .swp files in this directory 
set undofile " mantain undo history between sessions
set undodir=$HOME/.vim/undodir " save all the undo history hidden files in this directory
set whichwrap=h,l "go to the next line if reach the end of a line 
nnoremap n nzz 
"fissa la riga al centro della pagina quando si usa n
nnoremap N Nzz
"fissa la riga al centro della pagina quando si usa N
map <C-K> :bprev!<CR>
"prossimo buffer
map <C-J> :bnext!<CR>
"precedente buffer
inoremap <BS> <left><DEL>
"backspace delete in insert mode
inoremap { {<cr>}<C-o>O
inoremap ( ()<left>
inoremap [ []<left>
"
"
"
"
inoremap <C-]> <left><C-o>l<C-o>vG:s/\%V[\)\]\}]//gc<cr>q<C-o>a
"move cursor at the end of the next parentheses [dependency with whichwrap:]
inoremap <C-[> <left><C-o>vgg:s/\%V[\)\]\}]//gc<cr>q<C-o>:norm<space>GN<cr>
"move cursor at before the previous parentheses [dependency with whichwrap]
