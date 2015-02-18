"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Vundle Config
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nocompatible

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

filetype off                   " required!

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'

" Tagbar is a Vim plugin that provides an easy way to browse the tags of the current file and get an overview of its structure
Bundle 'majutsushi/tagbar'

"l9 is a Vim-script library, which provides some utility functions and commands for programming in Vim. 
Bundle 'L9'

" FuzzyFinder provides convenient ways to quickly reach the
" buffer/file/command/bookmark/tag you want. FuzzyFinder searches with the
" fuzzy/partial pattern to which it converted an entered pattern.
Bundle 'FuzzyFinder'

" The Most Recently Used (MRU) plugin provides an easy access to a list of recently opened/edited files in Vim
Bundle 'vim-scripts/mru.vim'

" The NERD tree allows you to explore your filesystem and to open files and directories. 
Bundle 'scrooloose/nerdtree'
Bundle 'jistr/vim-nerdtree-tabs'

" plugin will modify python's sys.path and the $PATH environment (Folder default search ~/.virtualenvs/)
Bundle 'jmcantrell/vim-virtualenv'

" plugin that helps you to create python code very quickly by utilizing libraries including pylint, rope, 
" pydoc, pyflakes, pep8, and mccabe for features like static analysis, refactoring, folding, completion, documentation, and more.
Bundle 'klen/python-mode'

" jedi-vim is a VIM binding to the autocompletion library Jedi.
" doc http://jedi.jedidjah.ch/en/latest/
Bundle 'davidhalter/jedi-vim'

" fugitive.vim may very well be the best Git wrapper of all time
Bundle 'tpope/vim-fugitive'

" Lean & mean status/tabline for vim that's light as air.
Bundle 'bling/vim-airline'

" A Vim plugin which shows a git diff in the 'gutter' (sign column). It shows whether each line has been added, 
" modified, and where lines have been removed. You can also stage and revert individual hunks.
Bundle 'airblade/vim-gitgutter'

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


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


syntax on                           " syntax highlighing

"
" Plugins config
"

filetype plugin indent on

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => color-scheme
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"color Monokai
:colorscheme molokai
" color codeschool
"set guifont=Monaco:h12
set guioptions-=T " Removes top toolbar
set guioptions-=r " Removes right hand scroll bar
set go-=L " Removes left hand scroll bar
autocmd User Rails let b:surround_{char2nr('-')} = "<% \r %>" " displays <% %> correctly
:set cpoptions+=$ " puts a $ marker for the end of words/lines in cw/c$ commands



"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => General
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Sets how many lines of history VIM has to remember
set history=1000

" Ignore some file
set wildignore=*.swp,*.bak,*.pyc,*.class

" Set to auto read when a file is changed from the outside
" set autowrite

" When vimrc is edited, reload it
autocmd! bufwritepost vimrc source ~/.vimrc

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
"
" My CUSTOM 
"
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


" markdown
au BufEnter,Bufread *.mkd,*.md,*.mdown,*.markdown set tw=0


" Folding
" auto save folding : http://princ3.wordpress.com/2007/01/26/automaticaly-save-foldings-in-vim/
"set viewoptions=folds
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

" CUSTOM CONFIGURATION FOR INSTALLED PLUGIN
"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Use F8 to open Tagbar in Right side
nnoremap <F8> :TagbarToggle<CR>
" TagBar Configuration
let g:tagbar_usearrows=1
let g:tagbar_width=30
let g:tagbar_singleclick=1



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



" Minibuffer{{{
""""""""""""""""""""""""""""""

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
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""}}}


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Python-mode Plugins
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Activate rope
" Keys:
" K             Show python docs
" <Ctrl-Space>  Rope autocomplete
" <Ctrl-c>g     Rope goto definition
" <Ctrl-c>d     Rope show documentation
" <Ctrl-c>f     Rope find occurrences
" <Leader>b     Set, unset breakpoint (g:pymode_breakpoint enabled)
" [[            Jump on previous class or function (normal, visual, operator modes)
" ]]            Jump on next class or function (normal, visual, operator modes)
" [M            Jump on previous class or method (normal, visual, operator modes)
" ]M            Jump on next class or method (normal, visual, operator modes)
let g:pymode_rope = 0

" Documentation
let g:pymode_doc = 1
let g:pymode_doc_key = 'K'

"Linting
let g:pymode_lint = 1
let g:pymode_lint_checker = "pyflakes,pep8"
" Auto check on save
let g:pymode_lint_write = 1

" Support virtualenv
let g:pymode_virtualenv = 1

" Enable breakpoints plugin
let g:pymode_breakpoint = 1
let g:pymode_breakpoint_key = '<leader>b'

" syntax highlighting
let g:pymode_syntax = 1
let g:pymode_syntax_all = 1
"let g:pymode_syntax_indent_errors = g:pymode_syntax_all
"let g:pymode_syntax_space_errors = g:pymode_syntax_all
"let g:pymode_syntax_highlight_equal_operator = g:pymode_syntax_all
"let g:pymode_syntax_highlight_self = g:pymode_syntax_all
"let g:pymode_syntax_builtin_objs = g:pymode_syntax_all
"let g:pymode_syntax_builtin_types = g:pymode_syntax_all
"let g:pymode_syntax_docstrings = g:pymode_syntax_all

" Options
let g:pymode_options_max_line_length = 79 "Maximo de caracteres por linea
let g:pymode_options_colorcolumn = 1 " Enable colorcolum display at max_line_lenght
let g:pymode_python = 'python3' "Version python two opt 'python' or 'python3'


"let g:pymode_rope_goto_definition_bind = '<C-c>g' "Go definition method or class
"let g:pymode_rope_goto_definition_cmd = 'new' "Command for open window when definition has been found


" Don't autofold code
let g:pymode_folding = 0




"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => jedi-vim Plugins
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Use <leader>l to toggle display of whitespace
nmap <leader>l :set list!<CR>
" automatically change window's cwd to file's dir
set autochdir

" I'm prefer spaces to tabs
set tabstop=4
set shiftwidth=4
set expandtab

" more subtle popup colors 
if has ('gui_running')
    highlight Pmenu guibg=#66668a gui=bold    
endif


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => emmet-vim Plugins
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:user_emmet_mode='a'

"Enable just for html/css
let g:user_emmet_install_global = 0
autocmd FileType html,css EmmetInstall

"To remap the default <C-Y> leader:
let g:user_emmet_leader_key= '<C-Z>'
