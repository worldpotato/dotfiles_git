" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.config/nvim/plugged')


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


" AIRLINE
Plug 'vim-airline/vim-airline' " better status bar
Plug 'vim-airline/vim-airline-themes' " beautiful airline
" Always show the status line
set laststatus=2
let g:airline_powerline_fonts = 1
let g:airline_theme='airpotato'

if !exists('g:airline_symbols')
	let g:airline_symbols = {}
endif

" Unicode symbols
let g:airline_left_sep = ''
let g:airline_right_sep = ''
let g:airline_symbols.crypt = ''
let g:airline_symbols.linenr = '☰'
let g:airline_symbols.maxlinenr = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.paste = '∥'
let g:airline_symbols.spell = '暈'
let g:airline_symbols.notexists = 'Ɇ'
let g:airline_symbols.whitespace = 'Ξ'

" airline symbols
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = '☰'
let g:airline_symbols.maxlinenr = ' '
let g:airline_symbols.dirty=''

" tab line
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ''
let g:airline#extensions#tabline#left_alt_sep = ''
let g:airline#extensions#tabline#right_sep = ''
let g:airline#extensions#tabline#right_alt_sep = ''


" LATEX
Plug 'lervag/vimtex'
let g:tex_flavor='latex'
let g:vimtex_view_method = 'zathura'
let g:vimtex_complete_close_braces = 1
" ks| to save the current cursor position and |'s to go back the the
" last position
au FileType tex ks|call LatexSettings()|'s
fun LatexSettings()
	EnableAutocorrect
	set spell
endfun
" au FileType tex EnableAutocorrect
" au FileType tex set spell


Plug 'vhdirk/vim-cmake'
let g:cmake_build_type='Debug'
let g:termdebug_wide=1
let g:termdebug_use_prompt = 1

au FileType c ks|call CSettings()|'s
fun CSettings()
	packadd termdebug
	set makeprg=gcc\ %c
endfun

au FileType cpp ks|call CppSettings()|'s
fun CppSettings()
	packadd termdebug
	set makeprg=g++\ %
endfun

Plug 'neoclide/coc.nvim', {'branch': 'release'}
" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
			\ pumvisible() ? "\<C-n>" :
			\ <SID>check_back_space() ? "\<TAB>" :
			\ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
	let col = col('.') - 1
	return !col || getline('.')[col - 1]	=~# '\s'
endfunction


" Use <cr> to confirm completion, `<C-g>u` means break undo chain at current position.
" Coc only does snippet and additional edit on confirm.
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"


" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved.
if has("patch-8.1.1564")
	" Recently vim can merge signcolumn and number column into one
	set signcolumn=number
else
	set signcolumn=yes
endif

" Use <c-space> to trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()
" Use `[g` and `]g` to navigate diagnostics
" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
	if (index(['vim','help'], &filetype) >= 0)
		execute 'h '.expand('<cword>')
	else
		call CocAction('doHover')
	endif
endfunction	
" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')

augroup mygroup
	autocmd!
	" Setup formatexpr specified filetype(s).
	autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
	" Update signature help on jump placeholder.
	autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)

" Add (Neo)Vim's native statusline support.
" NOTE: Please see `:h coc-status` for integrations with external plugins that
" provide custom statusline: lightline.vim, vim-airline.
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

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


Plug 'airblade/vim-gitgutter' " shows the left column with git changes
Plug 'tpope/vim-fugitive' " git commands inside vim
Plug 'tpope/vim-surround'
Plug 'tpope/vim-obsession'
Plug 'ryanoasis/vim-devicons' " icons in nerdtree and status bar
Plug 'sedm0784/vim-you-autocorrect'
Plug 'majutsushi/tagbar'
Plug 'jremmen/vim-ripgrep'
Plug 'raingo/vim-matlab'
Plug 'mipmip/vim-scimark'
Plug 'ludovicchabant/vim-gutentags'

" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
" Plug 'junegunn/vim-easy-align'

" Any valid git URL is allowed
" Plug 'https://github.com/junegunn/vim-github-dashboard.git'

" Multiple Plug commands can be written in a single line using | separators
" Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'

" On-demand loading
" Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
" Plug 'tpope/vim-fireplace', { 'for': 'clojure' }

" Using a non-master branch
" Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }

" Using a tagged release; wildcard allowed (requires git 1.9.2 or above)
" Plug 'fatih/vim-go', { 'tag': '*' }

" Plugin options
" Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }

" Plugin outside ~/.vim/plugged with post-update hook
" Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

" Unmanaged plugin (manually installed and updated)
" Plug '~/my-prototype-plugin'

" Initialize plugin system
call plug#end()

" KEYBINDINGS
nnoremap <Leader>b :Buffers<cr>
nnoremap <Leader>f :Files<cr>

" escape to normal mode in terminal window
tnoremap <leader><Esc> <C-\><C-n>


" color scheme
colorscheme worldpotato

" set the line number behaviour
set number relativenumber
augroup numbertoggle
	autocmd!
	autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
	autocmd BufLeave,FocusLost,InsertEnter	 * set norelativenumber
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
" set expandtab
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
set listchars=eol:¬,tab:>·,trail:~,extends:>,precedes:<,
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

