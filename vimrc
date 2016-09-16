" A good deal of credit should go to Lars Storjord
"               https://github.com/lstor
" since the base for this file was ruthlessly lifted from him ages ago. Other
" parts have been collected through the years, and some is my own.
"
" Worth noting that paths in this file are not suited for Windows, so if you
" want to use this for e.g. gvim on Windows, you'll have to make them Windows-y
" first.


" Settings: {{
" ------------

set nocompatible                " vim is 'vi improved' for a reason...

" Vundle: {{
" ----------
filetype off

    " Install vundle if it is not already installed:
    let iCanHazVundle=1
    let vundle_readme=expand('~/.vim/bundle/Vundle.vim/README.md')
    if !filereadable(vundle_readme)
        echo "Installing Vundle.."
        echo ""
        silent !mkdir -p ~/.vim/bundle
        silent !git clone https://github.com/gmarik/Vundle.vim ~/.vim/bundle/Vundle.vim
        let iCanHazVundle=0
    endif

    " set the runtime path to include Vundle and initialize
    set rtp+=~/.vim/bundle/Vundle.vim/

    call vundle#begin()

    " let Vundle manage Vundle, required
    Plugin 'gmarik/Vundle.vim'

    " Plugins:
    Plugin 'FuzzyFinder'
    Plugin 'L9'
    Plugin 'Lokaltog/vim-easymotion'
    " Plugin 'Syntastic'
    Plugin 'bling/vim-airline'
    " Plugin 'davidhalter/jedi-vim'
    Plugin 'javacomplete'
    Plugin 'scrooloose/nerdtree'
    Plugin 'taglist.vim'
    Plugin 'tpope/vim-surround'
    Plugin 'tpope/vim-fugitive'
    Plugin 'tpope/vim-rails'
    Plugin 'vim-latex/vim-latex'
    Plugin 'vim-ruby/vim-ruby'
    Plugin 'jaxbot/semantic-highlight.vim'
    Plugin 'epeli/slimux'

    " Web stuff:
    Plugin 'mattn/emmet-vim'
    Plugin 'sukima/xmledit'
    Plugin 'benjifisher/matchit.zip'
    Plugin 'valloric/MatchTagAlways'

    " fishman/ctags not necessary with exuberant ctags:
    " $ brew install ctags
    " See Tlist_Ctags_Cmd below
    " Plugin 'fishman/ctags'

    call vundle#end()

filetype plugin indent on

if iCanHazVundle == 0
    echo "Installing Bundles, please ignore key map error messages"
    echo ""
    :PluginInstall
endif
" }}

" Syntastic can get annoying.. sooo for now it's disabled
" let g:syntastic_aggregate_errors = 1        " Find all errors
" let g:syntastic_always_populate_loc_list = 1
" let g:syntastic_loc_list_height = 5         " Don't take up half the screen..
" let g:syntastic_python_checkers = 'pyflakes'
" let g:syntastic_java_checkers = ['javac', 'checkstyle']

" let g:syntastic_mode_map = { 'mode': 'active',
"             \ 'active_filetypes': [],
"             \ 'passive_filetypes': ['java', 'tex'] }

" Taglist settings:
"
" JavaScript:   Note that this requires an updated ~/.ctags
let g:tlist_javascript_settings = 'javascript;r:var;s:string;a:array;o:object;u:function'

" SuperTab:
let g:SuperTabDefaultCompletionType = "<C-X><C-O>"

" JediVim:
" Don't auto choose the first item since it requires <Enter> rather than <TAB>.
let g:jedi#popup_select_first = 0

" Don't auto initiate completion when typing a dot. Super annoying.
let g:jedi#popup_on_dot = 0

" Airline:
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif
let g:airline_left_alt_sep = '' "'»'
let g:airline_left_sep = '' "'▶'
let g:airline_right_alt_sep = '' "'«'
let g:airline_right_sep = '' "'◀'
let g:airline_symbols.linenr = '␊'
" let g:airline_symbols.linenr = '␤'
" let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'
" let g:airline_symbols.paste = 'ρ'
" let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.whitespace = 'Ξ'
let g:airline_symbols.space = "\ua0"

" let g:airline#extensions#syntastic#enabled = 1
let g:airline_theme='lucius'
" Only show syntastic warning, not whitespace:
" let g:airline_section_warning = '%{airline#util#wrap(airline#extensions#syntastic#get_warnings(),0)}'





" -----------------------------------------------------------------------------

" Utf-8 from here on out {{"{{
scriptencoding utf8
set enc=utf-8
setl fileencoding=utf-8
setl fileencodings=utf-8,latin1,default

" }}"}}

" -----------------------------------------------------------------------------

filetype plugin indent on       " use file specific plugins and indents


" NOTE: If you get errors about backup, tmp and/or undo folders, make sure they
" exist; ~/.vim/<folder-name>
set autochdir                   " cd to dir of current file
set autoindent                  " indenting
set autoread                    " automatically re-read when file is changed
set backspace=indent,eol,start  " smart backspacing
set backup                      " make backup
set backupdir=~/.vim/backup     " directory for backups
set bg=dark                     " used with color scheme
set cindent                     " extra indenting in unfinished parentheses
set clipboard+=unnamed          " share OS clipboard
set nocopyindent                " follow previous indent level
set nocursorcolumn              " don't highlight current column
set cursorline                  " highlight current line
set cpoptions=aABceFsq          " compatibility options, rtfm
set directory=~/.vim/tmp        " directory for swapfiles
set diffopt+=vertical           " Gdiff splits vertically
set noerrorbells                " noise sucks, but seems out of my control
set expandtab                   " convert tabs to spaces
set noexrc                      " use local version of .(g)vimrc, .exrc
" set foldcolumn=4                " use a column (like nu) to indicate folds
" set foldenable                  " enable folding
" set foldlevel=100               " don't have anything folded at the beginning
" set foldmethod=manual           " fold manually
set foldnestmax=5             " maximum nested folds
set formatoptions+=ro
set history=50                  " remember 50 commands
set hlsearch                    " highlight search
set ignorecase                  " searches are case insensitive
set incsearch                   " search while typing
set infercase                   " case inferred
set laststatus=2                " if == 2, use status bar
set lazyredraw                  " lazy screen redraw (faster)
set linebreak                   " if set wrap?, break only at a linebreak char
set linespace=0                 " no extra space between lines
set list                        " show chars indicated by listchars
set listchars=tab:>·,trail:·    " show tabs and trailing whitespace
set magic                       " use default escaping of search chars
set matchpairs=(:),{:},[:],<:>  " matching pairs for use with % (see matchit)
set matchtime=2                 " tenths of a second to show matching brackets
set mouse=a                     " enable mouse
set number                      " line numbers
set report=0                    " report changes via :...
set ruler                       " status bar
set scrolloff=5                 " scroll at this distance from top/bottom
set shiftround                  " be clever with tabs
set shiftwidth=4                " used with autoindenting
set showbreak=                  " dont indicate long lines
set showcmd                     " show current command
set showmatch                   " show matching parenthesis
set showmode                    " show current mode (insert etc.)
set sidescroll=5                " minimum horizontal scroll
set smartcase                   " ignore case except when.. uh, :help smartcase
set smartindent                 " indenting
set smarttab                    " indenting
set softtabstop=4               " insert four spaces on tab
set splitright                  " new split windows appear on the right
set startofline                 " automatically move cursor to start of line on <C-D>, <C-F>, <C-U>, <C-D>, gg, G etc.
" set statusline=%#Time#%{strftime(\"\%a\ \%d\ \%b\ \%H:\%M\ \ \",localtime())}\ %#Filepath#[\%f]%#Filetype#\ %y%#Flags#\ %M\ \ %r\ %h\ %w\ %=%L\ lines\ \ \ %#Percentage#[%p%%]%#Positions#\ %6l,%4c%V\ \ \
set tabstop=8                   " an actual tab is eight spaces
set textwidth=79                " generate newline at col 80
set undodir=~/.vim/undodir      " directory for undofiles
set novisualbell                " blink on error
set wildignore=.dll,.o,.obj, " do not list these file extensions
              \.bak,.exe,.pyc,.jpg,.gif,.png,.wmv,.pdf,.avi,.mpg,
              \.divx,.so,.a
set wildmenu                    " command line completion wild style
set wildmode=longest:full,full
set wmh=0                       " window minimum height is 0, rather than 1 line
set nowrap                      " don't wrap text around

" }}

" -----------------------------------------------------------------------------

" Plugin Configuration: {{
" ------------------------

" LaTeX_Suite:
" let g:tex_flavor='latex'
autocmd FileType tex    set shellslash              " Forward slashing in win32
autocmd FileType tex    set guioptions+=m           " Access to templates
autocmd FileType tex    set shiftwidth=2


" Web Stuff:
autocmd FileType html   set shiftwidth=2
autocmd FileType erb    set shiftwidth=2

" OCaml:
autocmd FileType ocaml  set shiftwidth=2

" Make:
autocmd FileType make   setlocal noexpandtab softtabstop=0 nosmarttab

" EasyMotion:
let g:EasyMotion_leader_key = '<leader><leader>'

" TODO: Can't remember if I need these or not... lol
" TOhtml: Use CSS and XHTML
let html_use_css=1
let use_xhtml=1

" Taglist:
let Tlist_Auto_Open=0               " don't open on vim startup
let Tlist_Compact_Format=1
let Tlist_Ctags_Cmd='/usr/local/bin/ctags'
let Tlist_Enable_Fold_Column=0
let Tlist_Exit_OnlyWindow=1         " auto close if main window quits
let Tlist_File_Fold_Auto_Close=0
let Tlist_Use_Right_Window=1
let Tlist_WinWidth=40

" }}

" -----------------------------------------------------------------------------

" Mappings: {{
" ------------

" Make escaping to Normal mode a lot easier
inoremap jj <Esc>

" Use arrow keys for something more productive
"   Syntastic option:
"       inoremap <silent> <Left>    <Esc>:Errors<CR>a
"       inoremap <silent> <Right>   <Esc>:lclose<CR>a
"   Tab navigation with Left/Right arrow keys:
inoremap <silent> <Left>    <Esc>lgT
inoremap <silent> <Right>   <Esc>lgt

" Taglist on Up, NERDTree on Down
inoremap <silent> <Up>      <Esc>:TlistUpdate<CR>:TlistToggle<CR>a
inoremap <silent> <Down>    <Esc>:NERDTreeToggle<CR>

" Remap arrow keys in normal mode:
" Left/Right; Simpler tab navigation
nnoremap <silent> <Left>    gT
nnoremap <silent> <Right>   gt

nnoremap <silent> <Up>      :TlistUpdate<CR>:TlistToggle<CR>
nnoremap <silent> <Down>    :NERDTreeToggle<CR>

" Navigate split windows easily: XXX Doesn't work properly
"
" <C-w>_ maximises window heigh, <C-w>| maximises width
" nnoremap <silent> <S-Up>    :wincmd k<CR><C-w>_
" nnoremap <silent> <S-Down>  :wincmd j<CR><C-w>_
" nnoremap <silent> <S-Left>  :wincmd h<CR><C-w>|
" nnoremap <silent> <S-Right> :wincmd l<CR><C-w>|

" nnoremap <silent> <C-h> <C-w>h<C-w>|
" nnoremap <silent> <C-j> <C-w>j<C-w>_
" nnoremap <silent> <C-k> <C-w>k<C-w>_
" nnoremap <silent> <C-l> <C-w>l<C-w>|

" Rotate split windows
" nnoremap <silent> <C-r> <C-w>r

" Cycle tabs with CTRL-H and CTRL-L
nnoremap <silent> <C-h> gT
nnoremap <silent> <C-l> gt

" Split window out as a new tab with CTRL-t
nnoremap <silent> <C-t> <C-w>T

" Allow indenting with Tab in normal mode:
nnoremap <Tab>      >>
nnoremap <S-Tab>    <<

" Disable arrow keys in visual mode:
vnoremap <Left>     <Nop>
vnoremap <Right>    <Nop>
vnoremap <Down>     <Nop>
vnoremap <Up>       <Nop>

" Save with Ctrl + S:
" noremap <silent> <C-S>  :w<CR>
" inoremap <silent> <C-S> <Esc>:w<CR>a

" Use space for easymotion simple 3-char navigation
map <space> <Plug>(easymotion-s2)

" Current-word search highlights matches instead of immediately jumping to next
nmap <silent> * *``
nmap <silent> # #``

" Auto-centre screen on next/previous match
" nmap G Gzz
nmap n nzz
nmap N Nzz

" Make the Norwegian keyboard more useful
" Toggle capital character
nmap å ~h
xmap å [
omap å [
cmap å [

nmap Å ]
xmap Å ]
omap Å ]
cmap Å ]

nmap æ `
xmap æ `
omap æ `
cmap æ `
" imap æ `

nmap Æ '
xmap Æ '
omap Æ '
cmap Æ '
" imap Æ '

" -----------------------------------------------------------------------------

" Leader Mappings: {{
" -------------------

" Set mapleader to ø to make better use of the Norwegian keyboard
let mapleader = 'ø'

" Set mark v and mark all with visual mode:
" Note: Uses mark v to return cursor to its origin after visual mode
noremap  <silent> <leader>a  mvgg<S-V>$G
inoremap <silent> <leader>a <Esc>mvgg<S-V>$G

" <leader>s - substitute on this line
nmap <leader>s :s///g<Left><Left><Left>

" <leader>S - substitute all with confirmation
nmap <leader>S :%s///gc<Left><Left><Left><Left>

" Sort selected lines in visual mode
vnoremap <leader>s :sort<CR>

" Auto-reformat selection/paragraph to use the full textwidth:
vnoremap Q gq
nnoremap Q gqap

" ;; - Global quick slash-friendly search-replace pattern
nnoremap ;; :%s:::gc<Left><Left><Left><Left>
nnoremap ;' :%s:::g<Left><Left><Left>

" For EasyMotion quickfind
nmap <silent> <leader>f <leader><leader>f
nmap <silent> <leader>F <leader><leader>F

nmap <silent> <leader>t <leader><leader>t

" Do the same for words since I haven't bound them elsewhere
nmap <silent> <leader>w <leader><leader>w
nmap <silent> <leader>b <leader><leader>b

" Find next digit on this line
nnoremap <silent> <leader>g :call search("[0-9]", "",  line("."))<CR>

" Find previous digit on this line
nnoremap <silent> <leader>G :call search("[0-9]", "b", line("."))<CR>

" Remove search highlights
nnoremap <silent> <leader>h :nohls<CR>

" Toggle search highlights
nnoremap <silent> <leader>H :set hls!<CR>

" Redo paste properly
nnoremap <silent> <leader>p :set paste<CR>p:set nopaste<CR>gi

" Edit .vimrc
nnoremap <silent> <leader>v :e! $MYVIMRC<CR>

" Swap buffer
nnoremap <silent> <leader>x   :b#<CR>

" SyntasticCheck
" inoremap <silent> <leader>y <Esc>:SyntasticCheck<CR>a
" nnoremap <silent> <leader>y :SyntasticCheck<CR>

" Matching curly braces; <leader>8 is easier than <leader>{
inoremap <leader>8 {<CR>}<Esc>O

" Remove all trailing whitespace at the end of each line:
nmap <silent> <leader>; :%s:\s\+$::g<CR>``:nohlsearch<CR>
imap <silent> <leader>; <Esc>:%s:\s\+$::g<CR>``:nohlsearch<CR>a

" Go to next trailing whitespace. Can be used as a quick mark when editing text.
nnoremap <silent> - /\s$<CR>:noh<CR>a

" Reduce sections of multiple blank lines to a single blank line
" FIXME seems to have a bug if multiple blank lines at bottom
" nmap <silent> <leader>- :g/^$/,/./-j<CR>``:nohls<CR>

" Simplify making groups in search patterns
cmap <leader>( \(\)<Left><Left>

" Apply rot13 to entire file, in case you're writing something secret :-)
" Note: Uses mark N
map <leader><Esc> mNggVGg?`N

" Insert a single character without entering insert mode.
nnoremap  <silent> <leader><TAB> :exe "normal i".nr2char(getchar())<CR>

" Auto-scroll down/up. <C-C> to stop.
" Need :redraw<CR> since set lazyredraw is active.
map <silent> <F8> 0j:redraw<CR>:sleep 80m<CR><F8>
map <silent> <F9> 0k:redraw<CR>:sleep 90m<CR><F9>

" Note: Following use mark v
" Set mark on entering visual mode
nnoremap <C-v> mv<C-v>
nnoremap V mvV
nnoremap v mvv
" Return to mark when exiting visual mode
vnoremap <esc> <esc>`v

" -----------------------------------------------------------------------------

" }} " }} end mappings

" -----------------------------------------------------------------------------

" Autocommands: {{
" ----------------

" Define an augroup to prevent redefining the commands.
augroup vimrc_filetype
  autocmd!

  " .vimrc
  " Automatically source upon write
  au BufWritePost ~/.vimrc :source %
  au BufWritePost ~/_vimrc :source %
augroup end

" Mark the 51st and 73rd column for git commit summary messages
augroup gitcommit_filetype
  autocmd!
  au FileType gitcommit :set cc=51,73
augroup end


" Autosave and autoload fold views
autocmd BufWinLeave *.py    mkview
autocmd BufWinEnter *.py    silent loadview

autocmd BufWinLeave *.java  mkview
autocmd BufWinEnter *.java  silent loadview

" }}

" -----------------------------------------------------------------------------

" Filetype Specific: {{
" ---------------------
filetype on
augroup vimrc_filetype

    " Execute file with F1
    autocmd FileType    python          map <F1> <F6>:!echo ----- Running % -----; python % 
    autocmd FileType    ruby            map <F1> <F6>:!echo ----- Running % -----; ruby % 

    " Compile == Save
    autocmd FileType    minizinc        map <F3> :w<CR>:!<Up><CR>
    autocmd FileType    minizinc        map <F4> :w<CR>:!echo ----- Running % -----; time minizinc % 
    autocmd FileType    minizinc        map <F5> <F4><CR>
    autocmd FileType    minizinc        map <F6> :w<CR>:!echo ----- Running % -----; minizinc % 
    autocmd FileType    minizinc        map <F7> <F6><CR>
    autocmd FileType    ruby            map <F6> :w<CR>
    autocmd FileType    ruby            map <F7> <F1><CR>
    autocmd FileType    python          map <F6> :w<CR>
    autocmd FileType    python          map <F7> <F1><CR>
    " autocmd FileType    python          nmap <S-F6> Go<CR><Esc>gI"""<CR>Runtime example:<CR><Esc>gI"""<Esc>O<Esc>:read !python %
    " autocmd FileType    c,cpp           map <F5> :make<CR>

    " For simple compiling when a makefile isn't feasible
    " autocmd FileType    c               map <F6> :w<CR>:!echo -- Compiling %; gcc -o %< %<CR>
    " autocmd FileType    cpp             map <F6> :w<CR>:!echo -- Compiling %; g++ -o %< %<CR>
    " autocmd FileType    c,cpp           map <F7> <S-F7><CR>
    " autocmd FileType    c,cpp           map <S-F7> :!echo -- Running %<; ./%<


    " Folding of JavaDoc:
    autocmd FileType    java            :set foldmarker=/**,*/ foldmethod=marker foldlevel=0
                                                    " fdc=1 foldcolumn
    " Fold/unfold JavaDoc
    autocmd FileType    java            nmap <silent> <leader>j :g:\/\*\*:foldo<CR>:nohls<CR>
    autocmd FileType    java            nmap <silent> <leader>J :g:\/\*\*:foldo<CR>:nohls<CR>

    " Compiling Java
    autocmd FileType    java            map <F6> :w<CR>:!echo -- Compiling %; javac %<CR>
    " Run Java without arguments
    autocmd FileType    java            map <F7> <F1><CR>
    " Run Java with arguments
    autocmd FileType    java            map <F1> :!echo -- Running %<; java %<

    " Syntax-indenting for programming...
    " autocmd FileType    c,cpp,java,php  set foldmethod=syntax

    autocmd FileType    vim             set foldmethod=marker
    autocmd FileType    vim             set foldlevel=1
    " Java specific
    autocmd FileType    java            imap {<CR> {<CR><CR>}<Esc>kcc
    " }
    autocmd FileType    java            imap <leader>m class  <Esc>maa{<CR>public static void main(String[] args) {<CR><Esc>`ai
    " }}
    autocmd FileType    java            imap <leader>l <leader>m<Esc>"%pdF.x<Esc>2jcc
    autocmd FileType    java            imap <leader>p System.out.println();<Esc>F)i
    autocmd FileType    java            imap <leader>o System.out.printf();<Esc>F)i
    autocmd FileType    java            nmap <leader>m i<leader>m
    autocmd FileType    java            nmap <leader>l i<leader>l
    autocmd FileType    java            nmap <leader>p i<leader>p
    autocmd FileType    java            nmap <leader>o i<leader>o

    " Tags files require tabs, probably of width 8
    autocmd FileType    tags            setlocal noexpandtab softtabstop=0 nosmarttab

    " Ruby:
    autocmd Filetype    ruby            imap <leader>e <Esc>A<CR><CR>end<Esc>kcc

    " Minizinc:
    autocmd FileType    minizinc        imap (<CR> (<CR><CR>);<Esc><<kcc

    " Slimux For IPython:
    autocmd FileType    python,ocaml    nnoremap <leader>c :SlimuxGlobalConfigure<CR>

    autocmd FileType    python          nnoremap <leader>q :SlimuxSendKeys quit Enter<CR>
    autocmd FileType    python          inoremap <leader>q <Esc>ma:SlimuxSendKeys quit Enter<CR>`aa
    autocmd FileType    python          nnoremap <leader>e :SlimuxSendKeys ipython Enter<CR>
    autocmd FileType    python          inoremap <leader>e <Esc>ma:SlimuxSendKeys ipython Enter<CR>`aa

    autocmd FileType    ocaml           nnoremap <leader>q :SlimuxSendKeys C-D<CR>
    autocmd FileType    ocaml           inoremap <leader>q <Esc>ma:SlimuxSendKeys C-D<CR>`aa
    autocmd FileType    ocaml           nnoremap <leader>e :SlimuxSendKeys ocaml Enter<CR>
    autocmd FileType    ocaml           inoremap <leader>e <Esc>ma:SlimuxSendKeys ocaml Enter<CR>`aa
    " Send current line
    autocmd FileType    python,ocaml    nnoremap <leader>l ma:SlimuxREPLSendLine<CR>`a
    autocmd FileType    python,ocaml    inoremap <leader>l <Esc>ma:SlimuxREPLSendLine<CR>`aa

    " Send current selection:
    autocmd FileType    python          vnoremap <leader>l y:SlimuxSendKeys %paste Enter<CR>
    autocmd FileType    ocaml           vnoremap <leader>l y:SlimuxREPLSendSelection<CR>

    autocmd FileType    python,ocaml    nnoremap <leader>o :SlimuxSendKeys C-C<CR>

    autocmd FileType    python,ocaml    nnoremap <leader>i :SlimuxSendKeys C-L<CR>
    autocmd FileType    python,ocaml    inoremap <leader>i <Esc>ma:SlimuxSendKeys C-L<CR>`aa

    " Make text files text friendly with wrapped lines.
    " Remember gq (visual) and gqap (normal) to easily reformat.
    " autocmd FileType    text    setlocal linebreak nolist
    " autocmd FileType    text    setlocal textwidth=0 wrap
    " autocmd BufWinEnter *.txt   set nolist
    " autocmd BufWinEnter *.txt   set showbreak=" " " space in front of wrapped lines
    " autocmd BufWinEnter *.txt   set textwidth=0
    " autocmd BufWinEnter *.txt   set wrap

    set dictionary=/usr/share/dict/words
    autocmd BufWinEnter *.txt set complete+=k

    autocmd FileType    minizinc    set dictionary=\~/.vim/misc/minizinc_dict
    autocmd FileType    minizinc    set complete+=k

    " autocmd FileType    minizinc    set commentstring='\%%s'


    " Omnicompletion: {{
    " ------------------

    autocmd FileType    java    setlocal omnifunc=javacomplete#Complete
    " Python uses jedi-vim via vundle.

    " }}


"    autocmd BufWritePost *.sh   :silent !chmod +x %
"    autocmd BufWritePost *.pl   !chmod +x %
"    autocmd BufWritePost *.py   !chmod +x %
    autocmd BufWritePost ~/.vimrc :source %
augroup end

" }} end filetype specific

" Appearance: {{
" --------------

if has("gui_running")
    set guioptions+=a       " Visual mode AUTOSELECT window
    set guioptions+=c       " Console dialogs >> popups
    set guioptions-=e       " Don't add tab pages
    set guioptions-=f       " MacVim doesn't support forking

    " Unclutter the UI:
    set guioptions-=m       " Hide the menu
    set guioptions-=T       " Toolbar is for tools
    set guioptions-=r       " No RHS scrollbar always present..
    set guioptions-=R       " .. or for a vsplit
    set guioptions-=l       " Same for the LHS
    set guioptions-=L       " LHS vsplit
    set guioptions-=b       " .. and the bottom scrollbar
    set mousehide           " Hide mouse pointer while typing
endif

set t_Co=256                " use 256 colors
set background=dark

" Set colorscheme:
if has("gui_running")
    " Colorscheme tango2 is available from http://folk.uio.no/larsstor/tango2.vim
    colorscheme tango2
else
    " Colorscheme monlokai should be in my dotfiles...
    colorscheme monlokai
endif

" Use 'railscasts'.. or rather mo2kai colorscheme for Ruby files:
" autocmd BufWinEnter *.rb colorscheme mo2kai

syntax on                       " use syntax highlighting

" -----------------------------------------------------------------------------

" Use F10 to detect the syntax highlighting group of a keyword
" Super useful if you want to make your own colorscheme 8-)
map <F10> :echo "hi<" . synIDattr(synID(line("."),col("."),1),"name") . '> trans<'
\ . synIDattr(synID(line("."),col("."),0),"name") . "> lo<"
\ . synIDattr(synIDtrans(synID(line("."),col("."),1)),"name") . ">"<CR>

" A few different takes on auto-resizing windows if you want e.g. a fixed 80 by
" 24 window everytime you start vim; accounting for 3-digit line numbers.
"
" if !exists('g:vimrc_loaded')
"   if has('gui')
"     " set lines=48 columns=84
"     set lines=24 columns=84
"   else
"     set lines=24 columns=80
"   endif
" end

" autocmd BufWinEnter set lines=24 columns=84
" autocmd VimLeave set lines=24 columns=80

" Function to size up.
function! SizeUpFunc()
    if !exists('g:vimrc_loaded')
        " Don't resize if window is already resized
        if exists("g:oldColumns") " || &columns != 84 || &lines != 24
            return
        elseif &columns < 84
            " Save the current width.
            let g:oldColumns = &columns
            let g:oldLines = &lines
            " Reset column size when Vim quits.
            au VimLeave * SizeDown
            " Bigger width to make room for line numbers and the sign markers.
            set columns=84 " lines=26
        endif
    end
endfunction
command! SizeUp call SizeUpFunc()

function! SizeDownFunc()
    if !exists("g:oldColumns")
        return
    endif
    " Restore the original size.
    let &columns = g:oldColumns
    let &lines = g:oldLines
    " Remove the variable.
    unlet g:oldColumns
    unlet g:oldLines
endfunction
command! SizeDown call SizeDownFunc()

autocmd BufWinEnter * SizeUp

" Too much sidescrolling with 79
autocmd FileType text,markdown setlocal textwidth=78 nocindent nosmartindent

" Make parentheses less of a hassle:
" vim-latex maps <Ctrl-j> to replace the next <++>, highlights search.
autocmd FileType tex inoremap \[ \[<CR><CR>\]<++><Esc>kcc

" Use Prolog instead of Perl syntax highlighting for .pl files
let g:filetype_pl="prolog"

" }}
