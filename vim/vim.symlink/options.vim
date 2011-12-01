set nofoldenable
" set relativenumber " line numbers are relative to current line
" set undofile       " Create FILE.un~ files for persistent undo
" set undodir=~/.vim/undodir " Persistent undo
set number         " non-relative line numbers
set numberwidth=5  " minimum
set ruler          " show cursor position all the time
set nowrap         " don't wrap lines
set backspace=indent,eol,start " allow backspacing over everything in insert mode
set autoindent
set copyindent     " copy previous indentation on autoindenting
set showmatch      " show matching parenthesis
set ignorecase     " ignore case when searching
set smartcase      " ignore case if search pattern is all lowercase, case-sensitive otherwise
set smarttab       " insert tabs on the start of a line according to shiftwidth, not tabstop
set incsearch      " show search matches as you type
set showcmd        " display incomplete commands
set modelines=2    " inspect top/bottom 2 lines for modeline
set scrolloff=3    " When scrolling, show 3 lines of context
set cursorline     " highlight cursor line
set mat=5          " Bracket blinking
set fileencodings=utf-8,iso-8859-1
set fileformats=unix,mac,dos
set textwidth=0    " No width
set showbreak="@" " This is prepended to wrapped lines

set list listchars=tab:»·,trail:· " Display extra whitespace
set laststatus=2                  " Always show status line (not only for multiple windows)
