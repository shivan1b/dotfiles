if &t_Co >= 256 || has("gui_running")
    colorscheme zenburn
endif

if &t_Co > 2 || has("gui_running")
    " switch syntax highlighting on, when the terminal has colors
    syntax on
endif

filetype plugin indent on

set nowrap        " don't wrap lines
set tabstop=4     " a tab is four spaces
set backspace=indent,eol,start
                    " allow backspacing over everything in insert mode
set autoindent    " always set autoindenting on
set copyindent    " copy the previous indentation on autoindenting
set number        " always show line numbers
set shiftwidth=4  " number of spaces to use for autoindenting
set shiftround    " use multiple of shiftwidth when indenting with '<' and '>'
set showmatch     " set show matching parenthesis
set ignorecase    " ignore case when searching
set smartcase     " ignore case if search pattern is all lowercase,
                    "    case-sensitive otherwise
set smarttab      " insert tabs on the start of a line according to
                    "    shiftwidth, not tabstop
set expandtab     "use spaces instead of tabs"
set hlsearch      " highlight search terms
set incsearch     " show search matches as you type
set history=10000         " remember more commands and search history
set undolevels=10000      " use many muchos levels of undo
set wildignore=*.swp,*.bak,*.pyc,*.class
set title                " change the terminal's title
set visualbell           " don't beep
set noerrorbells         " don't beep

filetype on

call plug#begin('~/.vim/plugged')
Plug 'scrooloose/nerdtree'
Plug 'valloric/youcompleteme'
Plug 'rust-lang/rust.vim'
Plug 'bronson/vim-trailing-whitespace'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'
call plug#end()

filetype plugin indent on

autocmd filetype python set expandtab


set list
set listchars=tab:>.,trail:.,extends:#,nbsp:.
set pastetoggle=<F2>
nnoremap ; :
au FileType python setlocal formatprg=autopep8\ -
