" Options 
:set number
":set relativenumber
:set autoindent
:set background=dark
:set cursorline
:set title
:set list
" Tab sizing 
:set tabstop=4
:set shiftwidth=4
:set smarttab
:set softtabstop=4
:set expandtab

call plug#begin()

Plug 'https://github.com/preservim/nerdtree'
Plug 'https://github.com/ryanoasis/vim-devicons' " Developer Icons
Plug 'neoclide/coc.nvim', {'branch': 'release'} " Node
Plug 'https://github.com/ap/vim-css-color'
Plug 'https://github.com/vim-airline/vim-airline' " Status bar
Plug 'https://github.com/APZelos/blamer.nvim' " Git blame
Plug 'tomasiser/vim-code-dark'
Plug 'https://github.com/tpope/vim-fugitive' 
set encoding=UTF-8

call plug#end()

nnoremap <C-f> :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-l> :call CocActionAsync('jumpDefinition')<CR


" Blamer
let g:blamer_enabled = 1


let g:NERDTreeDirArrowExpandable="+"
let g:NERDTreeDirArrowCollapsible="~"

let g:airline_powerline_fonts = 1

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

" airline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''
let g:airline_theme = 'codedark'
let g:airline#extensions#branch#enabled = 1
" Theme
syntax on
colorscheme codedark

autocmd VimEnter * NERDTree
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

