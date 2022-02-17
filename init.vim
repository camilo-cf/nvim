""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" vim-plug auto install
 " Directorio de plugins
call plug#begin('~/.local/share/nvim/plugged')

" Aquí irán los plugins a instalar
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plug 'scrooloose/nerdtree'
let g:NERDTreeChDirMode = 2  " Cambia el directorio actual al nodo padre actual
" Abrir/cerrar NERDTree con F2
map <F2> :NERDTreeToggle<CR>
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plug 'tpope/vim-fugitive'
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'  " Temas para airline
Plug 'itchyny/lightline.vim'

let g:airline#extensions#tabline#enabled = 1  " Mostrar buffers abiertos (como pestañas)
let g:airline#extensions#tabline#fnamemod = ':t'  " Mostrar sólo el nombre del archivo

" Cargar fuente Powerline y símbolos (ver nota)
let g:airline_powerline_fonts = 1
"
set noshowmode  " No mostrar el modo actual (ya lo muestra la barra de estado)"
let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ 
      \} 
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plug 'vim-syntastic/syntastic'
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plug 'scrooloose/nerdcommenter'
let g:NERDSpaceDelims = 1
let g:NERDCompactSexyComs = 1
let g:NERDDefaultAlign = 'left'
let g:NERDCommentEmptyLines = 1
let g:NERDTrimTrailingWhitespace = 1
let g:NERDToggleCheckAllLines = 1
map <C-_> <plug>NERDCommenterToggle
vmap <C-_> <plug>NERDCommenterToggle gv
let g:NERDCustomDelimiters = {
    \ 'python': { 'left': '#', 'leftAlt': '#' },
    \ }
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'

" Expandir snippet con Ctrl + j
let g:UltiSnipsExpandTrigger = '<c-j>'

" Ir a siguiente ubicacion con Ctrl + j
let g:UltiSnipsJumpForwardTrigger = '<c-j>'
" Ir a anterior ubicacion con Ctrl + k
let g:UltiSnipsJumpBackwardTrigger = '<c-k>'
let g:UltiSnipsEditSplit="vertical"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plug 'Yggdroot/indentLine'
" No mostrar en ciertos tipos de buffers y archivos
let g:indentLine_fileTypeExclude = ['text', 'sh', 'help', 'terminal']
let g:indentLine_bufNameExclude = ['NERD_tree.*', 'term:.*']
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plug 'sheerun/vim-polyglot'
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Auto pairs for '(' '[' '{'
Plug 'jiangmiao/auto-pairs'
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins'  }
Plug 'Shougo/neco-syntax'  " Fuente general de auto completado
Plug 'deoplete-plugins/deoplete-jedi'
Plug 'davidhalter/jedi-vim'

" Activar deoplete al iniciar Neovim
let g:deoplete#enable_at_startup = 1
" let g:jedi#use_splits_not_buffers = "left"
" let g:jedi#show_call_signatures = "1"
"
"" Cerrar automaticamente la ventana de vista previa (donde se muestra documentación, si existe)
" augroup deopleteCompleteDoneAu
"      autocmd!
"        autocmd CompleteDone * silent! pclose!
" augroup END
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plug 'ervandew/supertab'

" Invertir direccion de navegacion (de arriba a abajo)
let g:SuperTabDefaultCompletionType = '<c-n>'
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plug 'Shougo/echodoc.vim'
set noshowmode  " No mostrar el modo actual (echodoc hace uso de este espacio)
" Activar echodoc al iniciar Neovim
let g:echodoc_enable_at_startup = 1
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plug 'tpope/vim-surround'
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

call plug#end()
" Luego de esta línea puedes agregar tus configuraciones y mappings
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set title  " Muestra el nombre del archivo en la ventana de la terminal
set number  " Muestra los números de las líneas
set relativenumber " Muestra los números relativos
set noswapfile " No permite múltiples archivos swap - multi sensiones en 1 archivo
" set mouse=a  " Permite la integración del mouse (seleccionar texto, mover el cursor)
set hlsearch " Resalta las búsquedas
set incsearch " Incremental search 
" set nowrap  " No dividir la línea si es muy larga
set encoding=utf-8 " Utilizar UTF-8 
set cursorline  " Resalta la línea actual
set colorcolumn=120  " Muestra la columna límite a 120 caracteres
set wildmenu " Easier Tab completion for filenames 
set smartindent 
set wrap " Wrap the line
set laststatus=2 " Show line status
set showcmd " Show command history

" Indentación a 4 espacios
set tabstop=4
set shiftwidth=4
set softtabstop=4
" set shiftround
set expandtab  " Insertar espacios en lugar de <Tab>s
"
" set hidden  " Permitir cambiar de buffers sin tener que guardarlos
"
" set ignorecase  " Ignorar mayúsculas al hacer una búsqueda
" set smartcase  " No ignorar mayúsculas si la palabra a buscar contiene
" mayúsculas
"
" set spelllang=en,es  " Corregir palabras usando diccionarios en inglés y
" español
"
set termguicolors  " Activa true colors en la terminal
set background=light " Fondo del tema: light o dark
colorscheme kalisi " Nombre del tema
:highlight Pmenu ctermbg=blue guibg=blue
