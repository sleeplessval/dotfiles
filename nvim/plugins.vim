"     ____  __            _           
"    / __ \/ /_  ______ _(_)___  _____
"   / /_/ / / / / / __ `/ / __ \/ ___/
"  / ____/ / /_/ / /_/ / / / / (__  ) 
" /_/   /_/\__,_/\__, /_/_/ /_/____/  
"               /____/                

call plug#begin('~/.config/nvim/plugged')

Plug 'neovim/nvim-lspconfig'
Plug 'neovim/nvim.net'

Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-nvim-lsp'

Plug 'itchyny/lightline.vim'

Plug 'neoclide/coc.nvim', { 'branch': 'release' }

Plug 'omnisharp/omnisharp-vim'

Plug 'preservim/nerdtree'
Plug 'python-mode/python-mode', {'for': 'python', 'branch': 'develop'}

Plug 'rust-lang/rust.vim'

call plug#end()

