syntax on

" Tabs not spaces!
" http://www.jwz.org/doc/tabs-vs-spaces.html
set softtabstop=2 " interpret tab as an indent command
set tabstop=2     " set tab character to 2 characters
set expandtab     " turn tabs into whitespace
set shiftwidth=2  " indent width for autoindent

set statusline=%F%m%r%h%w\ [TYPE=%Y\ %{&ff}]\ [%l/%L\ (%p%%)]
set visualbell
set noswapfile
set number
set background=dark

" Open new split panes to right and bottom
set splitright
set splitbelow

" Key mapping for easy navigation between splits
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
