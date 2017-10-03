syntax on
filetype plugin indent on

" Tabs not spaces!
" http://www.jwz.org/doc/tabs-vs-spaces.html
set tabstop=2     " set tab character to 2 characters
set expandtab     " turn tabs into whitespace
set shiftwidth=2  " indent width for autoindent

set statusline=%F%m%r%h%w\ [TYPE=%Y\ %{&ff}]\ [%l/%L\ (%p%%)]
set visualbell " Turn off beeping

" Run a git blame on the lines selected in visual mode to find out who made
" the changes
:vmap gl :<C-U>!git blame <C-R>=expand("%:p") <CR> \| sed -n <C-R>=line("'<") <CR>,<C-R>=line("'>") <CR>p<CR>

:set noswapfile
 
:map <leader>gh :silent !launchy http://github.com/tribesports/tribesports/tree/`git describe --contains --all HEAD`/% &<CR>

" Cycle through buffers using Ctrl-m and Ctrl-n for previous and next
:nnoremap <C-m> :bnext<CR>
:nnoremap <C-n> :bprev<CR>

:nnoremap { :tabprev<CR>
:nnoremap } :tabnext<CR>

:vmap gl :<C-U>!git blame <C-R>=expand("%:p") <CR> \| sed -n <C-R>=line("'<") <CR>,<C-R>=line("'>") <CR>p<CR>

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


" set background=dark
" if has("gui_running")
"   colorscheme vividchalk
"   set t_Co=256
" else
"   "colorscheme solarized
"   colorscheme vividchalk
" endif
" let g:solarized_termcolors = 256 
" let g:solarized_visibility = "high" 
" let g:solarized_contrast = "high" 


" let mapleader = "\\"
" 
" set nocompatible
" 
" " Tabs not spaces!
" " http://www.jwz.org/doc/tabs-vs-spaces.html
" set tabstop=2     " set tab character to 2 characters
" set expandtab     " turn tabs into whitespace
" set shiftwidth=2  " indent width for autoindent
" 
" syntax on
" filetype plugin indent on
" 
" call pathogen#infect()
" 
" 
" 
" let g:RspecBin="bundle exec rspec"
" 
" let g:tmux_sessionname=0
" let g:tmux_windowname="Primary"
" let g:tmux_panenumber=1
" 
" syntax enable
" 
" :map \c :s/^/#/<CR>
" :map \u :s/^#//<CR>
" 
" :map ;e :w\|:!ruby %<CR>
" :map ;p :!php %<CR>
" :map ;c '<,'>s/^/# /g
" 
" " Run a git blame on the lines selected in visual mode to find out who made
" " the changes
" :vmap gl :<C-U>!git blame <C-R>=expand("%:p") <CR> \| sed -n <C-R>=line("'<") <CR>,<C-R>=line("'>") <CR>p<CR>
" " And the same for subversion
" :vmap sgl :<C-U>!svn blame <C-R>=expand("%:p") <CR> \| sed -n <C-R>=line("'<") <CR>,<C-R>=line("'>") <CR>p<CR>
" 
" 
" :map gm :e app/models
" :map gv :e app/views
" :map gc :e app/controllers
" 
" :imap § #
" 
" " Cycle through buffers using Ctrl-m and Ctrl-n for previous and next
" :nnoremap <C-m> :bnext<CR>
" :nnoremap <C-n> :bprev<CR>
" 
" set guioptions-=T  " don't need toolbar
" set backupdir=~/tmp " Don't annoy me with swap files in working directory
" set directory=~/tmp
" 
" 
" 
" :map \vrc :source $MYVIMRC<CR>
" :map \evrc :e $MYVIMRC<CR>
" 
" " lots of useful ruby/rails shortcuts
" :map \step :e features/step_definitions<CR>
" :map \feat :e features<CR>
" :map \app :e app<CR>
" :map \view :e views<CR>
" :map \cont :e controllers<CR>
" :map \fact :e test/factories.rb<CR>
" :map \tr :e config/locales/strings.en_GB.yml<CR>
" :map \gita :%s/.*modified:   /git add /g<CR>
" :imap cplc  "([^\"]*)"
" 
" :map egem :e /Users/amcdonough/.rvm/gems/ruby-1.9.2-p136/gems<CR>
" 
" fun! Lookup(some_term)
"   exe 'grep -rin "'.a:some_term.'" config/locales/strings.en_GB.yml'
" endfun
" 
" au BufNewFile,BufRead *.yaml,*.yml so ~/.vim/yaml.vim
" 
" if has("gui_running")
"   set guioptions=aiA " Disable toolbar, menu bar, scroll bars
" endif " has("gui_running")
" 
" :map h1 yyp:s/./=/g<ENTER>
" :map h2 yyp:s/./-/g<ENTER>
" :map <C-'> :sp<ENTER>
" :map <C-\> :vs<ENTER>
" 
" :nnoremap <C-m> :bnext<CR>
" :nnoremap <C-n> :bprev<CR>
" 
" " Automatically remove all trailing whitespace from lines so I don't break our
" " test suite
" autocmd BufWritePre *.rb :%s/\s\+$//e
" 
" set showmatch
" 
" function! OpenInBrowser(url)
"   if has("mac")
"     exec '!open '.a:url
"   else
"     exec '!firefox -new-tab '.a:url.' &'
"   endif
" endfunction
" 
" " Open the Ruby ApiDock page for the word under cursor
" function! OpenRubyDoc(keyword)
"   let url = 'http://apidock.com/ruby/'.a:keyword
"   call OpenInBrowser(url)
" endfunction
" noremap RB :call OpenRubyDoc(expand('<cword>'))<CR>
" 
" " Open the Rails ApiDock page for the word under cursor
" function! OpenRailsDoc(keyword)
"   let url = 'http://apidock.com/rails/'.a:keyword
"   call OpenInBrowser(url)
" endfunction
" noremap RR :call OpenRailsDoc(expand('<cword>'))<CR>
" 
" " :SudoW to save file using sudo (must be already authorised, eg sudo -v)
" command! -bar -nargs=0 SudoW :sile
" 
" 
" " Command line style file completion
" " set wildmode=list:longest 
" 
" " Search matching - ignore case
" set ignorecase 
" set smartcase
" 
" " Show line number in bottom right
" set ruler 
" 
" " My common typos for autocorrection
" :iab achievment achievement
" :iab achivement achievement
" :iab acheivement achievement
" :iab achivment achievement
" :iab acheivment achievement
" :iab assember assembler
" :iab vertext vertex
" 
" :iab ```` "([^"]*)"
" 
" let Tlist_Ctags_Cmd = "/usr/local/bin/ctags"
" let Tlist_WinWidth = 50
" map T :TlistToggle<cr>
" 
" :map { :tabprev<CR>
" :map } :tabnext<CR>
" :map ;n :tabnew<CR>
" 
" :set background=dark
" 
" :map <leader>jsl :!jsl -process %<CR>
" 
" :map <leader>noumber :'<,'>s/^\s*\zs/\=(line('.') - line("'<")+1).'. '
" 
" 
" :set noswapfile
" 
" :map <leader>gh :silent !launchy http://github.com/tribesports/tribesports/tree/`git describe --contains --all HEAD`/% &<CR>
" 
" if has("autocmd")
"   filetype indent plugin on
" endif
" 
" " autogenerate tags in the background on save
" " au BufWritePost *.c,*.cpp,*.h silent! !ctags -R &
