"BASE
set nocompatible	"disable vi compatebility
"automaticly reload .vimrc when changed
autocmd bufwritepost .vimrc source $MYVIMRC

"MOUSE
set mouse=a		"enable mouse

"FILETYPE DETECTION
filetype on
filetype plugin on
filetype indent on

"LOOKS
set number		"line numbers
set ruler		"cursor position lower right
set laststatus=2	"status line on line 2 (bottom-up)
set title		"show title in console title
set background=dark	"adapt colorscheme for dark background
set listchars=tab:▸\ ,eol:¬	"use nicer characters for tab and EOL spaces

"BUFFERS/DIRS
set hidden		"Handle multiple buffers better
"set autochdir		"auto change directory

"SEARCHING
set incsearch		"search while typing
set hlsearch		"make # work

"FOLDING
set foldmethod=syntax
"set foldcolumn=1
set foldlevel=999999	"start unfolded

"INDENTATION
set autoindent		"auto indentation
set smartindent		"smart indentation

"INSERT MODE MAPPING
inoremap jj <Esc>	"map jj to escape

"MAPPINGS
nmap  <Leader>y :NERDTreeToggle<CR>
nmap <leader>l :set list!<CR>	"mapping to shower hidden characters
"map <right> <ESC>:bn<RETURN>
"map <left> <ESC>:bp<RETURN>
