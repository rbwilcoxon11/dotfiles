" Searching
"   *******************************************************************
set hlsearch " highlight search
set incsearch " incremental search, search as you type
set ignorecase " Ignore case when searching
set smartcase " Ignore case when searching lowercase
""    
""     
"" Colors
""     **********************************************************************
execute pathogen#infect()
syntax enable
set background=dark
colorscheme Tomorrow-Night-Bright
syntax on " syntax highlighting
""      
""       

:if &term == "xterm-color"
: set t_kb=^V
: fixdel
:endif


