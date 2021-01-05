" color scheme
colorscheme worldpotato

" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.config/nvim/plugged')


"""""""""" Plugins without configuration
" Plug 'sigidagi/vim-cmake-project'
" Plug 'vhdirk/vim-cmake'
Plug 'ilyachur/cmake4vim'
Plug 'airblade/vim-gitgutter' " shows the left column with git changes
Plug 'tpope/vim-fugitive' " git commands inside vim
Plug 'tpope/vim-surround'
Plug 'tpope/vim-dispatch'
Plug 'tpope/vim-obsession'
Plug 'ryanoasis/vim-devicons' " icons in nerdtree and status bar
Plug 'sedm0784/vim-you-autocorrect'
Plug 'jremmen/vim-ripgrep'
Plug 'raingo/vim-matlab'
Plug 'mipmip/vim-scimark'
Plug 'ludovicchabant/vim-gutentags'
Plug 'easymotion/vim-easymotion'
Plug 'm-pilia/vim-ccls'


"""""""""" Plugins with configuration
" NERDCOMMENTER
" Plug 'octol/vim-cpp-enhanced-highlight'
Plug 'preservim/nerdcommenter' " simple commenting
" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1
" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1
" Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDDefaultAlign = 'left'
" Set a language to use its alternate delimiters by default
let g:NERDAltDelims_java = 1
" Add your own custom formats or override the defaults
let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } }
" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1
" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1
" Enable NERDCommenterToggle to check all selected lines is commented or not
let g:NERDToggleCheckAllLines = 1


Plug 'itchyny/lightline.vim'
Plug 'taohexxx/lightline-buffer'
" use lightline-buffer in lightline
set noshowmode
set showtabline=2
" lightline-buffer ui settings
" replace these symbols with ascii characters if your environment does not support unicode
let g:lightline_buffer_logo = ' '
let g:lightline_buffer_readonly_icon = ''
let g:lightline_buffer_modified_icon = '✭'
let g:lightline_buffer_git_icon = ' '
let g:lightline_buffer_ellipsis_icon = '..'
let g:lightline_buffer_expand_left_icon = '◀ '
let g:lightline_buffer_expand_right_icon = ' ▶'
let g:lightline_buffer_active_buffer_left_icon = ''
let g:lightline_buffer_active_buffer_right_icon = ''
let g:lightline_buffer_separator_icon = '  '
" enable devicons, only support utf-8
" require <https://github.com/ryanoasis/vim-devicons>
let g:lightline_buffer_enable_devicons = 1
" lightline-buffer function settings
let g:lightline_buffer_show_bufnr = 1
" :help filename-modifiers
let g:lightline_buffer_fname_mod = ':t'
" hide buffer list
let g:lightline_buffer_excludes = ['vimfiler']
" max file name length
let g:lightline_buffer_maxflen = 30
" max file extension length
let g:lightline_buffer_maxfextlen = 3
" min file name length
let g:lightline_buffer_minflen = 16
" min file extension length
let g:lightline_buffer_minfextlen = 3
" reserve length for other component (e.g. info, close)
let g:lightline_buffer_reservelen = 20
let g:lightline = {
    \ 'colorscheme': 'colorpotato',
    \ 'active': {
    \   'left': [ [ 'mode', 'paste' ],
    \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
    \ },
    \ 'tabline': {
    \   'left': [ [ 'bufferinfo' ],
    \             [ 'separator' ],
    \             [ 'bufferbefore', 'buffercurrent', 'bufferafter' ], ],
    \   'right': [],
    \ },
    \ 'component_expand': {
    \   'buffercurrent': 'lightline#buffer#buffercurrent',
    \   'bufferbefore': 'lightline#buffer#bufferbefore',
    \   'bufferafter': 'lightline#buffer#bufferafter',
    \ },
    \ 'component_type': {
    \   'buffercurrent': 'tabsel',
    \   'bufferbefore': 'raw',
    \   'bufferafter': 'raw',
    \ },
    \ 'component_function': {
    \   'gitbranch': 'FugitiveHead',
    \   'bufferinfo': 'lightline#buffer#bufferinfo',
    \ },
    \ 'component': {
    \   'separator': '',
    \ },
    \ }

" LATEX
Plug 'lervag/vimtex'
let g:vimtex_compiler_method='tectonic'
let g:vimtex_view_method = 'zathura'
let g:vimtex_complete_close_braces = 0
let g:vimtex_fold_enabled = 1


Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
let g:deoplete#enable_at_startup = 1
inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"
inoremap <silent><expr><s-tab> pumvisible() ? "\<c-p>" : "\<s-tab>"

Plug 'deoplete-plugins/deoplete-clang'

Plug 'autozimu/LanguageClient-neovim', {
    \ 'branch': 'next',
    \ 'do': 'bash install.sh',
    \ }
" Required for operations modifying multiple buffers like rename.
set hidden
" also see https://github.com/autozimu/LanguageClient-neovim/wiki/ccls
let s:ccls_settings = {
         \ "highlight": { "lsRanges" : v:true },
         \ }
let s:ccls_command = ['/usr/bin/ccls', '-init=' . json_encode(s:ccls_settings)]
let g:LanguageClient_serverCommands = {
      \ 'c': s:ccls_command,
      \ 'cpp': s:ccls_command,
      \ 'objc': s:ccls_command,
      \ }
nn <silent> <M-j> :call LanguageClient#textDocument_definition()<cr>
nn <silent> <C-,> :call LanguageClient#textDocument_references({'includeDeclaration': v:false})<cr>
nn <silent> K :call LanguageClient#textDocument_hover()<cr>
" note that if you are using Plug mapping you should not use `noremap` mappings.
nmap <F5> <Plug>(lcn-menu)
" Or map each action separately
nmap <silent>K <Plug>(lcn-hover)
nmap <silent> gd <Plug>(lcn-definition)
nmap <silent> gr <Plug>(lcn-references)
nmap <silent> gi <Plug>(lcn-implementation)
nmap <silent> <F2> <Plug>(lcn-rename)

" One of the must have plugins
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
let g:fzf_layout = { 'window': { 'width': 0.9, 'height': 0.6 } }

Plug 'tibabit/vim-templates'
let g:tmpl_search_paths = ['~/.config/nvim/templates']  
let g:tmpl_author = 'Felix Strobel'
let g:teml_email = 'mail@felixstrobel.de'

Plug 'jackguo380/vim-lsp-cxx-highlight'
let g:cpp_class_scope_highlight = 1
let g:cpp_member_variable_highlight = 1
let g:cpp_class_decl_highlight = 1
let g:lsp_cxx_hl_use_text_props = 1

Plug 'rhysd/vim-clang-format'
let g:clang_format#code_style = 'WebKit'
let g:clang_format#style_options = {"Standard" : "c++20"}

Plug 'cohama/lexima.vim'
" Plug 'jiangmiao/auto-pairs'
" let g:AutoPairsFlyMode = 0

Plug 'majutsushi/tagbar'
let g:tagbar_sort = 0

Plug 'vimlab/split-term.vim'
set splitbelow

Plug 'dense-analysis/ale'
let g:ale_linter = ['clangtidy']
let g:ale_fixers = ['clangtidy']
let g:ale_c_clangformat_executable = '/usr/bin/clang-format'
let g:ale_disable_lsp = 1

let g:ale_c_clangformat_options = '-style=WebKit'
" Initialize plugin system
call plug#end()

" Keybindings
nnoremap <Leader>b :Buffers<cr>
nnoremap <Leader>f :Files<cr>

" escape to normal mode in terminal window
tnoremap <leader><Esc> <C-\><C-n>

let g:termdebug_wide = 10
let g:termdebug_use_prompt = 0

au FileType c ks|call CSettings()|'s
fun CSettings()
    packadd termdebug
    let g:termdebug_wide = 10
    let g:termdebug_use_prompt = 0
    let g:cmake_build_type='Debug'
    let g:cmake_usr_args="-DTESTS=ON"
    set makeprg=gcc\ %c
    nnoremap <Leader>c :ClangFormat<CR> :LspCxxHighlight<CR>
endfun

au FileType cpp ks|call CppSettings()|'s
fun CppSettings()
    packadd termdebug
    let g:termdebug_wide = 10
    let g:termdebug_use_prompt = 0
    let g:cmake_build_type='Debug'
    let g:cmake_usr_args="-DTESTS=OFF"
    set makeprg=g++\ %
    nnoremap <Leader>c :ClangFormat<CR> :LspCxxHighlight<CR>
endfun

" set the line number behaviour
set number relativenumber
augroup numbertoggle
    autocmd!
    autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
    autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
augroup END

"This allows for change paste motion cp{motion}
nmap <silent> cp :set opfunc=ChangePaste<CR>g@
function! ChangePaste(type, ...)
    silent exe "normal! `[v`]\"_c"
    silent exe "normal! p"
endfunction


" skeleton
" augroup templates
"     autocmd BufNewFile *.sh 0r ~/.vim/templates/skeleton.sh
" augroup END

" Syntax
syntax on

" color for the vertical and horizontal line
set cursorline
set cursorcolumn

" Height of the command bar
set cmdheight=2

" Behavior of tab stop
set expandtab
set tabstop=4
set shiftwidth=4

" FONT
set guifont=JetBrainsMono\ Nerd\ Font\ Mono

" Highlight search results
set hlsearch

" Show matching brackets when text indicator is over them
set showmatch

" How many tenths of a second to blink when matching brackets
set mat=10

" autoreads a file if it is changed outside
set autoread

" break the line at the end or start of a word
set linebreak

" Configure backspace so it acts as it should act
set backspace=eol,start,indent
set whichwrap+=<,>,h,l

" Ignore case when searching
set ignorecase

" When searching try to be smart about cases
set smartcase

" Makes search act like search in modern browsers
set incsearch

" share clipboard with x
set clipboard=unnamedplus

" No annoying sound on errors
set noerrorbells
set novisualbell
set t_vb=
set tm=500

" show unprintable characters
set listchars=eol:¬,tab:\┣━,trail:~,extends:>,precedes:<,
set list

" shows options for tabcompletion
set wildmenu

" add some sort of fuzzy completion
set path+=**

" enable to change buffer even if it has changes
set hidden

" remove weird "O" behaviour
set ttimeout
set ttimeoutlen=50

 " call deoplete#custom#options({
 " \ 'auto_complete_delay': 200,
 " \ 'smart_case': v:true,
 " \ })
 "
inoremap <silent><expr> <TAB>
    \ pumvisible() ? "\<C-n>" :
    \ <SID>check_back_space() ? "\<TAB>" :
    \ deoplete#mappings#manual_complete()
function! s:check_back_space() abort "{{{
    let col = col('.') - 1
    return !col || getline('.')[col - 1]  =~ '\s'
endfunction"}}}

call lexima#add_rule({'char': '$', 'input_after': '$', 'filetype': 'tex'})
call lexima#add_rule({'char': '$', 'at': '\%#\$', 'leave': 1, 'filetype': 'tex'})
call lexima#add_rule({'char': '<BS>', 'at': '\$\%#\$', 'delete': 1, 'filetype': 'tex'})

command Time :read !date --iso-8601='seconds'
 
