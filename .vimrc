set nocompatible " be iMproved, required
filetype off                   " required!

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')


" let Vundle manage Vundle
" required! 
Bundle 'gmarik/Vundle.vim'

"l9 is a Vim-script library, which provides some utility functions and commands for programming in Vim. 
Bundle 'L9'

" FuzzyFinder provides convenient ways to quickly reach the
" buffer/file/command/bookmark/tag you want. FuzzyFinder searches with the
" fuzzy/partial pattern to which it converted an entered pattern.
Bundle 'FuzzyFinder'

" The Most Recently Used (MRU) plugin provides an easy access to a list of recently opened/edited files in Vim
Bundle 'vim-scripts/mru.vim'

" Plugin to properly fold
Plugin 'tmhedberg/SimpylFold'

" plugin will modify python's sys.path and the $PATH environment (Folder default search ~/.virtualenvs/)
Bundle 'jmcantrell/vim-virtualenv'


" jedi-vim is a VIM binding to the autocompletion library Jedi.
" doc http://jedi.jedidjah.ch/en/latest/
Bundle 'davidhalter/jedi-vim'

" plugin that runs the currently open file through Flake8, a static syntax and style checker for Python source code. It supersedes both vim-pyflakes and vim-pep8.
" Flake8 is a wrapper around PyFlakes (static syntax checker), PEP8 (style checker) and Ned's MacCabe script (complexity checker).
Bundle 'nvie/vim-flake8'


" fugitive.vim may very well be the best Git wrapper of all time
Bundle 'tpope/vim-fugitive'

" A Vim plugin which shows a git diff in the 'gutter' (sign column). It shows whether each line has been added, 
" modified, and where lines have been removed. You can also stage and revert individual hunks.
Bundle 'airblade/vim-gitgutter'


" The NERD tree allows you to explore your filesystem and to open files and directories. 
Bundle 'scrooloose/nerdtree'
Bundle 'jistr/vim-nerdtree-tabs'

" Tagbar is a Vim plugin that provides an easy way to browse the tags of the current file and get an overview of its structure
Bundle 'majutsushi/tagbar'


" Lean & mean status/tabline for vim that's light as air.
" Bundle 'bling/vim-airline'
Bundle 'vim-airline/vim-airline'
Bundle 'vim-airline/vim-airline-themes'


" Color Themes
" vim-sublime - A minimal Sublime Text -like vim experience bundle http://github.com/grigio/vim-sublime
" Best view with a 256 color terminal and Powerline fonts
Bundle 'flazz/vim-colorschemes'


" Mejora la lectura de js
Bundle 'jelera/vim-javascript-syntax'

"PAra comentarios
Bundle 'scrooloose/nerdcommenter'

"Emmet is plugin which greatly improves HTML & CSS workflow
Plugin 'mattn/emmet-vim'

" Vim css and less syntax
"Bundle 'groenewege/vim-less'

" Track the engine.
Plugin 'SirVer/ultisnips'

" Snippets are separated from the engine. Add this if you want them:
Plugin 'honza/vim-snippets'

" Plugin to motion plugin that jumps to any location specified by two
" characters
Plugin 'justinmk/vim-sneak'
"Bundle 'honza/vim-snippets'
" Plugin to create python scripts for vim
" Plugin 'amoffat/snake'


" Plugin for TypeScript (Angular 2)
Plugin 'leafgarland/typescript-vim'

" Highlight html on string
Plugin 'Quramy/vim-js-pretty-template'

"asynchronous execution. 
Plugin 'Shougo/vimproc.vim'

" Autocomplete based on jedi
" For support TypeScript need install: npm install -g typescript
Plugin 'valloric/YouCompleteMe'
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

syntax on                           " syntax highlighing


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => color-scheme
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"color herald
color Monokai
"set guifont=Monaco:h12
set guioptions-=T " Removes top toolbar
set guioptions-=r " Removes right hand scroll bar
set go-=L " Removes left hand scroll bar
"autocmd User Rails let b:surround_{char2nr('-')} = "<% \r %>" " displays <% %> correctly
:set cpoptions+=$ " puts a $ marker for the end of words/lines in cw/c$ commands



"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => General Configuration
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Sets how many lines of history VIM has to remember
set history=1000

" Ignore some file
set wildignore=*.swp,*.bak,*.pyc,*.class

" Set to auto read when a file is changed from the outside
set autowrite

" With a map leader it's possible to do extra key combinations
" leader is press comma (,) key
" like <leader>w saves the current file
let mapleader=","
"let g:mapleader=","

" When vimrc is edited, reload it
autocmd! bufwritepost vimrc source ~/.vimrc

" Compartir clipboard con el sistema
set clipboard=unnamedplus

set cmdheight=1               " Explicitly set the height of the command line
set number                    " Display line numbers
set numberwidth=1             " using only 1 column (and 1 space) while possible
set title                     " show title in console title bar
set wildmenu                  " Menu completion in command mode on <Tab>
"set pastetoggle=<F3>          " Press F3 for toggle paste mode
set cursorline

" have command-line completion <tab> (for filenames, help topics, option names)
" first list the available options and complete the longest common part, then
" have further <tab>s cycle through the possibilities:
set wildmode=list:longest,full

set nowrap          " no line wrapping;
set guioptions+=b   " add a horizontal scrollbar to the bottom

" Use UTF-8 as the default buffer encoding
set enc=utf-8

" Always show status line, even for one window
set laststatus=2

" Scroll when cursor gets within 3 characters of top/bottom edge
set scrolloff=3

" Round indent to multiple of 'shiftwidth' for > and < commands
set shiftround

" Show (partial) commands (or size of selection in Visual mode) in the status line
set showcmd

" Don't request terminal version string (for xterm)
set t_RV=

"--- Keystrokes ----------------
" h and l wrap between lines, cursor keys wrap in insertion mode
set whichwrap=h,l,~,[,]


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => VIM user interface
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"set so=7            " Set 7 lines to the curors - when moving vertical..
set ruler           "Always show current position
set hid             "Change buffer - without saving
set nohidden
set mouse=a

" Set backspace config
set backspace=eol,start,indent
set whichwrap+=<,>,h,l

set nolazyredraw "Don't redraw while executing macros 
set magic "Set magic on, for regular expressions

set showmatch "Show matching bracets when text indicator is over them

" No sound on errors
set noerrorbells
set novisualbell
set tm=500

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Files, backups and undo
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Turn backup off, since most stuff is in SVN, git anyway...
set nobackup
set nowb
set noswapfile

set undodir=~/.vim/undodir
set undofile
set undolevels=1000 "maximum number of changes that can be undone
set undoreload=10000 "maximum number lines to save for undo on a buffer reload



"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => General
""""""""""""""""""""""""""""""""""""""""""""""""""""""""
au BufEnter,Bufread *.mkd,*.md,*.mdown,*.markdown set tw=0


" Folding
" auto save folding : http://princ3.wordpress.com/2007/01/26/automaticaly-save-foldings-in-vim/
"set viewoptions=folds
set foldcolumn=2
"au BufWinLeave * silent! mkview
"au BufWinEnter * silent! loadview

" autocmd Syntax c,cpp,vim,xml,html,xhtml,js,php,py,python set foldmethod=manual
" autocmd Syntax c,cpp,vim,xml,html,xhtml,perl normal zR

"remove trailing whitespace
"http://vim.wikia.com/wiki/Remove_unwanted_spaces#Automatically_removing_all_trailing_whitespace
autocmd BufWritePre *.c :%s/\s\+$//e
autocmd BufWritePre *.cpp :%s/\s\+$//e
autocmd BufWritePre *.c++ :%s/\s\+$//e
autocmd BufWritePre *.h :%s/\s\+$//e
autocmd BufWritePre *.java :%s/\s\+$//e
autocmd BufWritePre *.php :%s/\s\+$//e
autocmd BufWritePre *.pl :%s/\s\+$//e
autocmd BufWritePre *.py :%s/\s\+$//e

" tabs, not spaces for php, ctp
au BufEnter,BufRead *.php,*.ctp set noexpandtab

" Autoclose quickfix windows when quit
" http://stackoverflow.com/questions/7476126/how-to-automatically-close-the-quick-fix-window-when-leaving-a-file
aug QFClose
  au!
  au WinEnter * if winnr('$') == 1 && getbufvar(winbufnr(winnr()), "&buftype") == "quickfix"|q|endif
aug END

""""""""""""""""""""""""""""""""""""""""""""""""
" Auto close preview menu autocomplete after choose
" http://stackoverflow.com/questions/3105307/how-do-you-automatically-remove-the-preview-window-after-autocompletion-in-vim
"
" If you prefer the Omni-Completion tip window to close when a selection is
" made, these lines close it on movement in insert mode or when leaving
" insert mode
autocmd CursorMovedI * if pumvisible() == 0|pclose|endif
autocmd InsertLeave * if pumvisible() == 0|pclose|endif



"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => TagBar 
""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Use F8 to open Tagbar in Right side
nnoremap <F8> :TagbarToggle<CR>
" TagBar Configuration
let g:tagbar_usearrows=1
let g:tagbar_width=30
let g:tagbar_singleclick=1


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => NERDTree 
""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""""
" NERDTree : https://github.com/scrooloose/nerdtree.git
" MODIFYING NERDTree MY CUSTOM
" how to using NERDTree :
" http://ykyuen.wordpress.com/2011/04/04/nerdtree-the-file-explorer-in-vivim/
"""""""""""""""""""""""""""""""""""""""""""
" Enable this for make NERDTree load every opening files
" autocmd VimEnter * NERDTree " Make Always Load NERDTree every opening files
" autocmd VimEnter * wincmd p " Automatically go to buffer every time open files
" FIXING NERDTree, automatically close if there no file edited
"https://github.com/scrooloose/nerdtree/issues/21
"
autocmd WinEnter * call s:CloseIfOnlyNerdTreeLeft()

" Use leader + . for opening File Explorer
map <F2> :NERDTreeTabsToggle<CR>

map <F4> :NERDTreeFocus<CR>

let g:NERDTreeShowBookmarks=1
let g:NERDTreeMouseMode=3
let g:NERDTreeWinSize=30

" Close all open buffers on entering a window if the only
" buffer that's left is the NERDTree buffer
function! s:CloseIfOnlyNerdTreeLeft()
  if exists("t:NERDTreeBufName")
    if bufwinnr(t:NERDTreeBufName) != -1
      if winnr("$") == 1
        q
      endif
    endif
  endif
endfunction


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Minibuffer 
""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" make tabs show complete (no broken on two lines)
let g:miniBufExplTabWrap = 1

" If you use other explorers like TagList you can (As of 6.2.8) set it at 1:
let g:miniBufExplModSelTarget = 1

" If you would like to single click on tabs rather than double clicking on them to goto the selected buffer.
let g:miniBufExplUseSingleClick = 1

"for buffers that have NOT CHANGED and are NOT VISIBLE.
highlight MBENormal guifg=LightBlue

" for buffers that HAVE CHANGED and are NOT VISIBLE
highlight MBEChanged guifg=Red

" buffers that have NOT CHANGED and are VISIBLE
highlight MBEVisibleNormal term=bold cterm=bold gui=bold guifg=Green

" buffers that have CHANGED and are VISIBLE
highlight MBEVisibleChanged term=bold cterm=bold gui=bold guifg=Green

let g:bufExplorerSortBy = "name"

autocmd BufRead,BufNew :call UMiniBufExplorer

"""""""""""""""""""""""""""""""""""
" Stolen from http://dev.gentoo.org/~bass/configs/vimrc.html
"
" Adapt the status line accourding to the window
"""""""""""""""""""""""""""""""""""
if has("autocmd")
    au FileType qf
                \ if &buftype == "quickfix" |
                \     setlocal statusline=%2*%-3.3n%0* |
                \     setlocal statusline+=\ \[Compiler\ Messages\] |
                \     setlocal statusline+=%=%2*\ %<%P |
                \ endif

    fun! FixMiniBufExplorerTitle()
        if "-MiniBufExplorer-" == bufname("%")
            setlocal statusline=%2*%-3.3n%0*
            setlocal statusline+=\[Buffers\]
            setlocal statusline+=%=%2*\ %<%P
        endif
    endfun

    au BufWinEnter *
                \ let oldwinnr=winnr() |
                \ windo call FixMiniBufExplorerTitle() |
                \ exec oldwinnr . " wincmd w"
endif


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => jedi-vim Plugins
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Use <leader>l to toggle display of whitespace
nmap <leader>l :set list!<CR>
" automatically change window's cwd to file's dir
set autochdir

" I'm prefer spaces to tabs
" set tabstop=4
"set shiftwidth=4
" set expandtab
" set softtabstop=4
"set autoindent

set expandtab        " introduce espacios al pulsar tab
autocmd BufRead *.py set textwidth=80    " rompe las líneas al superar los 80 caracteres
set tabstop=4        " usa 4 espacios al presionar tab
set softtabstop=4
set shiftwidth=4     " numero de espacios a usar para autoindentacion
set autoindent        " Respetar automáticamente el sangrado de la línea precedente



" more subtle popup colors 
if has ('gui_running')
    highlight Pmenu guibg=#66668a gui=bold    
endif


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => django vim Plugins
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set filetype=htmldjango         " coloreado de sintaxis en las templates de django

" Trigger configuration. Do not use <tab> if you use
" https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => emmet-vim Plugins
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:user_emmet_mode='a'

"Enable just for html/css
let g:user_emmet_install_global = 0
autocmd FileType html,ts,htmldjango,css EmmetInstall

"To remap the default <C-Y> leader:
let g:user_emmet_leader_key= '<C-Z>'


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => vim-less Plugins
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"nnoremap <Leader>m :w <BAR> !lessc % > %:t:r.css<CR><space>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Airline 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:airline_detect_paste=1
let g:airline_theme='bubblegum'
let g:airline#extensions#tabline#enabled = 1

let g:airline_powerline_fonts = 1


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => SimplyFold
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:SimpylFold_docstring_preview = 1

autocmd BufWinEnter *.py setlocal foldexpr=SimpylFold(v:lnum) foldmethod=expr
autocmd BufWinLeave *.py setlocal foldexpr< foldmethod<

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Config TypeScript
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:typescript_compiler_binary = 'tsc'
let g:typescript_compiler_options = ''
autocmd QuickFixCmdPost [^l]* nested cwindow
autocmd QuickFixCmdPost    l* nested lwindow

" Config plugin js-pretty-template to highlight html on string for typescript
" file
autocmd FileType typescript JsPreTmpl html
autocmd FileType typescript syn clear foldBraces

" Syntaxis checker to ts
"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*
"let g:syntastic_check_on_open = 1
"let g:syntastic_check_on_wq = 0
"let g:tsuquyomi_disable_quickfix = 1
"let g:syntastic_typescript_checkers = ['tsuquyomi'] 
"let g:ycm_server_python_interpreter = '/usr/bin/python3'
