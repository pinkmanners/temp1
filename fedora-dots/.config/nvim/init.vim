call plug#begin()

" List your plugins here
Plug 'catppuccin/nvim', { 'as': 'catppuccin' }
Plug 'vim-airline/vim-airline'
Plug 'fladson/vim-kitty', { 'tag': '*' }


call plug#end()


" Set colors to catppuccin
colorscheme catppuccin-macchiato
let g:airline_theme = 'catppuccin'
