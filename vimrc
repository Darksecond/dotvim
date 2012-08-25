"BASE
set nocompatible	"disable vi compatebility
"automaticly reload .vimrc when changed
autocmd bufwritepost .vimrc source $MYVIMRC

"PATHOGEN
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()

"MOUSE
set mouse=a		"enable mouse

"FILETYPE DETECTION
filetype on
filetype plugin on
filetype indent on
"add *.mobile.erb to syntax highlighting detection
"this makes mobile erb files have syntax highlighting
autocmd BufNewFile,BufRead *.mobile.erb let b:eruby_subtype='html'
autocmd BufNewFile,BufRead *.mobile.erb set filetype=eruby
let NERDTreeIgnore = ['\.aux$']

"COMPLETION
set omnifunc=syntaxcomplete#Complete
autocmd FileType ruby,eruby set omnifunc=rubycomplete#Complete
autocmd FileType ruby,eruby let g:rubycomplete_buffer_loading = 1
autocmd FileType ruby,eruby let g:rubycomplete_rails = 1
autocmd FileType ruby,eruby let g:rubycomplete_classes_in_global = 1

"LOOKS
syntax enable
set number		"line numbers
set ruler		"cursor position lower right
set laststatus=2	"status line on line 2 (bottom-up)
set title		"show title in console title
set background=dark	"adapt colorscheme for dark background

"THEME
"let g:molokai_original = 1
"colorscheme molokai
colorscheme solarized
call togglebg#map("<F5>")

"GUI ONLY
if has("gui_running")
	set guioptions-=T
	set guioptions-=m
	set guioptions-=r
	set lines=60	
endif

set listchars=tab:▸\ ,eol:¬,trail:·	"use nicer characters for tab and EOL spaces

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

let g:ctrlp_map = '<leader>t'
