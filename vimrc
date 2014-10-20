set nocompatible
filetype off

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim'

Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/nerdtree'
Plugin 'bling/vim-airline'
Plugin 'kien/ctrlp.vim'
Plugin 'altercation/vim-colors-solarized'
Plugin 'kchmck/vim-coffee-script'
Plugin 'vim-ruby/vim-ruby'
Plugin 'tpope/vim-rails'

call vundle#end()

"FILETYPE DETECTION
filetype plugin indent on
autocmd Filetype ruby setlocal ts=2 sw=2 expandtab
autocmd Filetype eruby setlocal ts=2 sw=2 expandtab

"NERDTREE IGNORES
let NERDTreeIgnore = ['\.aux$', '\~$']

"MOUSE
set mouse=a		"enable mouse

"COMPLETION
set omnifunc=syntaxcomplete#Complete

"LOOKS
syntax enable
set rnu
set nu
set ruler
set laststatus=2
set title
set background=dark
set cc=80

let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1

set listchars=tab:▸\ ,eol:¬,trail:·	"use nicer characters for tab and EOL spaces

"THEME
colorscheme solarized
call togglebg#map("<F5>")

"GUI ONLY
if has("gui_running")
	set guioptions-=T
	set guioptions-=m
	set guioptions-=r
	set lines=60	
	set guifont=Meslo\ LG\ M\ DZ\ Regular\ for\ Powerline:h11
	set gcr=a:blinkon0
endif

"BUFFERS/DIRS
set hidden		"Handle multiple buffers better

"SEARCHING
set incsearch		"search while typing
set hlsearch		"make # work

"INDENTATION
set autoindent		"auto indentation
set smartindent		"smart indentation

"INSERT MODE MAPPING
inoremap jj <Esc>	"map jj to escape

"MAPPINGS
nmap  <Leader>y :NERDTreeToggle<CR>
nmap <leader>l :set list!<CR>	"mapping to show hidden characters

"disable or remap the cursor keys
""but only in normal mode
nmap <right> :bn<RETURN>
nmap <left> :bp<RETURN>
nmap <up> <nop>
nmap <down> <nop>

let g:ctrlp_map = '<leader>t'
