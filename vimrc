syntax on
filetype plugin indent on

" Tabs not spaces!
" http://www.jwz.org/doc/tabs-vs-spaces.html
set tabstop=2     " set tab character to 2 characters
set expandtab     " turn tabs into whitespace
set shiftwidth=2  " indent width for autoindent

set statusline=%F%m%r%h%w\ [TYPE=%Y\ %{&ff}]\ [%l/%L\ (%p%%)]
set visualbell

set noswapfile
 
" OSX stupid backspace fix
set backspace=indent,eol,start

" Show linenumbers
set number
" set ruler

" Always display the status line
set laststatus=2

" Theme and Styling
set t_Co=256
set background=dark
