syntax on
filetype plugin indent on

" Tabs not spaces!
" http://www.jwz.org/doc/tabs-vs-spaces.html
set tabstop=2     " set tab character to 2 characters
set expandtab     " turn tabs into whitespace
set shiftwidth=2  " indent width for autoindent

" Always display the status line
set laststatus=2
set statusline=%F%m%r%h%w\ [TYPE=%Y\ %{&ff}]\ [%l/%L\ (%p%%)]
set visualbell

" Disable SWAP file
set noswapfile
 
" OSX stupid backspace fix
set backspace=indent,eol,start

" Show linenumbers
set number

" Theme and Styling
set t_Co=256
set background=dark

" Open new split panes to right and bottom
set splitbelow
set splitright
