"BASE
set nocompatible	"disable vi compatebility
"automaticly reload .vimrc when changed
autocmd bufwritepost .vimrc source $MYVIMRC

"LOOKS
set number		"line numbers
set ruler		"cursor position lower right
set laststatus=2	"status line on line 2 (bottom-up)

"BUFFERS/DIRS
set hidden		"Handle multiple buffers better
set autochdir		"auto change directory

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

"MAPPINGS
nmap  <Leader>y :NERDTreeToggle<CR>
