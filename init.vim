" opciones agregadas a nvim
set mouse=a
set numberwidth=1
set clipboard=unnamed
syntax enable
set ruler
set encoding=UTF-8
set sw=2

" UI Config {{{
set hidden
set number                   " show line number
set showcmd                  " show command in bottom bar
set cursorline               " highlight current line
set wildmenu                 " visual autocomplete for command menu
set showmatch                " highlight matching brace
set laststatus=2             " window will always have a status line
set nobackup


" Spaces & Tabs {{{
set tabstop=2      " number of visual spaces per TAB
set softtabstop=2   " number of spaces in tab when editing
set shiftwidth=2    " number of spaces to use for autoindent
set expandtab       " tabs are space
set smartindent
set autoindent
set copyindent      " copy indent from the previous line
" }}} Spaces & Tabs

set noshowmode  " No mostrar el modo actual (ya lo muestra la barra de estado)

" fix indentation
nnoremap <leader>i mzgg=G`z<CR>

so  ~/AppData/Local/nvim/plugins.vim

" Enable theming support
if (has("termguicolors"))
 set termguicolors
endif

let g:gruvbox_contrast_dark='hard'
colorscheme gruvbox

let mapleader=" "

nmap <Leader>s <Plug>(easymotion-s2)
nmap <Leader>w :w<CR>
nmap <Leader>q :q<CR>
nmap <Leader>l :set wrap linebreak nolist<CR>


let $FZF_DEFAULT_OPTS='--layout=reverse'
let g:fzf_layout = { 'window': 'call FloatingFZF()' }
nnoremap <C-p> :FZF<CR>
let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-s': 'split',
  \ 'ctrl-v': 'vsplit'
  \}
" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.

au BufNewFile,BufRead *.ejs set filetype=html

let g:UltiSnipsSnippetDirectories=[$HOME.'/nvim/plugged/ultisnips']
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<S-tab>"
let $FZF_DEFAULT_COMMAND = 'ag -g ""'

let NERDTreeAutoDeleteBuffer=1
let NERDTreeMinimalUI=1
let NERDTreeShowHidden = 1
let NERDTreeStatusline = ''
let NERDTreeQuitOnOpen = 1
" Automaticaly close nvim if NERDTree is only thing left open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
" Toggle
nnoremap <silent> <C-b> :NERDTreeToggle<CR>

"let g:coc_node_path = '/d/laragon/bin/nodejs/node-v12/node'

" Cargar fuente Powerline y símbolos (ver nota)
let g:airline_powerline_fonts = 1
" No mostrar en ciertos tipos de buffers y archivos
let g:indentLine_fileTypeExclude = ['text', 'sh', 'help', 'terminal']
let g:indentLine_bufNameExclude = ['NERD_tree.*', 'term:.*']
let g:python3_host_prog='/c/miniconda3/envs/pynvim/python' 
" Lightlane
let g:lightline = {
      \ 'active': {
      \   'left': [['mode', 'paste'], [], ['relativepath', 'modified']],
      \   'right': [['kitestatus'], ['filetype', 'percent', 'lineinfo'], ['gitbranch']]
      \ },
      \ 'inactive': {
      \   'left': [['inactive'], ['relativepath']],
      \   'right': [['bufnum']]
      \ },
      \ 'component': {
      \   'bufnum': '%n',
      \   'inactive': 'inactive'
      \ },
      \ 'component_function': {
      \   'gitbranch': 'fugitive#head',
      \   'kitestatus': 'kite#statusline'
      \ },
      \ 'colorscheme': 'gruvbox',
      \ 'subseparator': {
      \   'left': '',
      \   'right': ''
      \ }
      \}
