"vim-plug
call plug#begin("~/.vim/plugged")
Plug 'preservim/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'tpope/vim-fugitive'
Plug 'morhetz/gruvbox'
call plug#end()

let g:airline#extensions#tabline#enabled = 1
colorscheme gruvbox
