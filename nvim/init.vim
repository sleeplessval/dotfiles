"                _
"    ____ _   __(_)___ ___
"   / __ \ | / / / __ `__ \
"  / / / / |/ / / / / / / /
" /_/ /_/|___/_/_/ /_/ /_/
"
syntax enable
filetype plugin indent on
colorscheme pablo

set autoindent
set noexpandtab
set tabstop=4
set shiftwidth=4

set mouse=a

"     __ __           __    _           __    
"    / //_/__  __  __/ /_  (_)___  ____/ /____
"   / ,< / _ \/ / / / __ \/ / __ \/ __  / ___/
"  / /| /  __/ /_/ / /_/ / / / / / /_/ (__  ) 
" /_/ |_\___/\__, /_.___/_/_/ /_/\__,_/____/  
"           /____/                            

"	Ctrl+Tab:		Toggle tab markers
map <C-Tab> :set list! lcs=tab:\¦\ <CR>
"	Ctrl+`:			Open NERDTree
map <C-Home> :NERDTree <CR>

"     ____           __          __
"    /  _/___  _____/ /_  ______/ /__
"    / // __ \/ ___/ / / / / __  / _ \
"  _/ // / / / /__/ / /_/ / /_/ /  __/
" /___/_/ /_/\___/_/\__,_/\__,_/\___/
"

execute 'source' '~/.config/nvim/plugins.vim'

" I don't know who the dumbfuck who thinks they
" know how I should be indenting better than me
" is, but they can kiss my ass.
set noexpandtab

