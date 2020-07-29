call plug#begin()

" themes ============================================
Plug 'ajmwagar/vim-deus'
Plug 'crusoexia/vim-monokai'
Plug 'rakr/vim-one'

" visual plugins ====================================
" support the bottom line
" default show
Plug 'itchyny/lightline.vim'

" support the right file menu
" F1 toggle
Plug 'preservim/nerdtree'
Plug 'jistr/vim-nerdtree-tabs'
map <silent> <F1> :NERDTreeTabsToggle<CR>
imap <silent> <F1> <ESC>:NERDTreeTabsToggle<CR>

" support the ranger cli
" F2 wake up
Plug 'voldikss/vim-floaterm'
map <silent> <F2> :tabnew<CR>:FloatermNew ranger<CR>
imap <silent> <F2> <ESC>:tabnew<CR>::FloatermNew ranger<CR>

" support the lazygit cli
" F3 wake up
map <silent> <F3> :FloatermNew lazygit<CR>
imap <silent> <F3> <ESC>:FloatermNew lazygit<CR>

" support the vista cli
" F4 wake up
Plug 'liuchengxu/vista.vim'
let g:vista_sidebar_width = 45
map <silent> <F4> :Vista!!<CR>
imap <silent> <F4> <ESC>:Vista!!<CR>


map <silent><F5> :call RunCode()<CR>

func! RunCode()
	exec "w"
	if &filetype == 'c'
		exec '%g++ % -o %<'
		exec '!time ./%<'
	elseif &filetype == 'c++'
		exec '%g++ % -o %<'
		exec '!time ./%<'
	elseif &filetype == 'java'
		exec '!javac %'
		exec '!time java %<'
	elseif &filetype == 'python'
		exec '!time python3 %'
	elseif &filetype == 'go'
		exec '!time go run %'
	elseif &filetype == 'vim'
		exec 'source ~/.config/nvim/init.vim'
		exec 'PlugInstall'
	elseif &filetype == 'rust'
		exec '!cargo run'
	endif
endfunc

" support the clap cli
Plug 'liuchengxu/vim-clap', { 'do': ':Clap install-binary' }

" support tmux navigation
" <C-h>
" <C-j>
" <C-k>
" <C-l>
Plug 'christoomey/vim-tmux-navigator'
Plug 'edkolev/tmuxline.vim'

" the remained F? deployment ========================
" F5  - run current project
" F6  - enhanced Debugger
" F7  - get or update dependency
" F8  - save for filetype
" F9  - save for filetype
" F12 - cmatrix li as saver
"
" default enhanced plugins ==========================
" support the different brace color
Plug 'luochen1990/rainbow'
let g:rainbow_active = 1

" support return the last leave place of cursor
Plug 'farmergreg/vim-lastplace'

" support underlining the same words
Plug 'dominikduda/vim_current_word'
let g:vim_current_word#highlight_current_word = 0

" support find the root directory as pwd
Plug 'airblade/vim-rooter'
let g:rooter_change_directory_for_non_project_files = 'current'

" support accelerating the moving speed
Plug 'rhysd/accelerated-jk'
nmap j <Plug>(accelerated_jk_gj)
nmap k <Plug>(accelerated_jk_gk)
let g:accelerated_jk_acceleration_table = [2, 4, 7, 15]

" support the git change history lint
Plug 'airblade/vim-gitgutter'
let g:gitgutter_map_keys = 0

" support showing the true color with #000000
Plug 'RRethy/vim-hexokinase', { 'do': 'make hexokinase' }
Plug 'RRethy/vim-illuminate'
let g:Hexokinase_highlighters = ['virtual']
let g:Illuminate_delay = 150
hi illuminatedWord cterm=undercurl gui=undercurl

Plug 'sakshamgupta05/vim-todo-highlight'
let g:todo_highlight_config = {
			\   'TODO': {
			\     'gui_fg_color': '#0f0fff',
			\     'gui_bg_color': '#affd3a',
			\   },
			\   'FIXME': {
			\     'gui_fg_color': '#000000',
			\     'gui_bg_color': '#af2d3a',
			\   }
			\}
"TODO:
"FIXME:

" support icons
Plug 'ryanoasis/vim-devicons'

" suport auto saving
Plug 'vim-scripts/vim-auto-save'
let g:auto_save_silent = 1
let g:auto_save_in_insert_mode = 0
autocmd FileType markdown let g:auto_save = 1

" support switching Chinese to Engless seamlessly
Plug 'lilydjwg/fcitx.vim'
set timeoutlen=500

" key-binding enhanced plugins =====================

" support quick align
" <LEADER> + d trigger
Plug 'junegunn/vim-easy-align'

" support terminal wake up
" alt + = toggle
Plug 'skywind3000/vim-terminal-help'

" support format the file
" <LEADER> + f trigger
Plug 'Chiel92/vim-autoformat'

" support visual multi operation
Plug  'mg979/vim-visual-multi', {'branch': 'master'}

" support surround operaion
Plug 'tpope/vim-surround'

" support translating English
" <LEADER> + t trigger
Plug 'voldikss/vim-translator'
let g:translator_default_engines = ['google']

" support toggle comment or not
" <LEADER> + c trigger
Plug 'preservim/nerdcommenter'
let g:NERDCreateDefaultMappings = 0

" support bookmark function
Plug 'MattesGroeger/vim-bookmarks'
let g:bookmark_no_default_key_mappings = 1

" support split window resizing
" <LEADER> + v trigger
Plug 'simeji/winresizer'
let g:winresizer_start_key = '<LEADER>v'

" support find and replace function
Plug 'brooth/far.vim'

" support enchaned motion experience
Plug 'easymotion/vim-easymotion'
let g:EasyMotion_do_mapping = 0
let g:EasyMotion_smartcase = 1
map ,j <Plug>(easymotion-j)
map ,k <Plug>(easymotion-k)
map ,f <Plug>(easymotion-overwin-f2)

" support cmatrix cli on vim
Plug 'itchyny/screensaver.vim'

" support which key of vim
Plug 'liuchengxu/vim-which-key'

" support enhanced macrobatics
Plug 'svermeulen/vim-macrobatics'
nnoremap <A-a> <C-a>
nnoremap <A-d> <C-x>

Plug 'segeljakt/vim-silicon'

" the completion plugins ===========================
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'honza/vim-snippets'
Plug 'SirVer/ultisnips'

inoremap <silent><expr> <TAB>
			\ pumvisible() ? "\<C-n>" :
			\ <SID>check_back_space() ? "\<TAB>" :
			\ coc#refresh()

function! s:check_back_space() abort
	let col = col('.') - 1
	return !col || getline('.')[col - 1]	=~# '\s'
endfunction

inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm() : "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

let g:UltiSnipsExpandTrigger="<M-u>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<S-tab>"

autocmd FileType go nmap <silent><F1> :CocCommand explorer<CR>
nmap <LEADER>f	<Plug>(coc-format-selected)
nmap <LEADER>d <Plug>(coc-definition)
nmap rn <Plug>(coc-rename)


" the special plugins of languages =================
" -- markdown
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown',      {'for':['markdown']}
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app & yarn install', 'for':['markdown']  }
Plug 'mzlogin/vim-markdown-toc',     {'for':['markdown']}

autocmd FileType markdown nmap <M-p> :call Md_paste_image()<CR>
func! Md_paste_image()
	let cliptext = getreg('*')
	if !filereadable(cliptext)
		echo "[illeagal path]"
		return
	endif
	let outdir = expand('%:p:h') . '/' . 'img'
	if !isdirectory(outdir)
		call mkdir(outdir)
	endif
	let l:tmpname = input('Image name: ')
	if empty(l:tmpname)
		let l:tmpname = 'imge_' . strftime("%Y-%m-%d-%H-%M-%S")
	endif
	let relpath =  './img/' . l:tmpname . '.' . split(cliptext, '\.')[-1]
	call system('cp "' . cliptext . '" "' . relpath . '"')
	execute "normal! i![I"
	let ipos = getcurpos()
	execute "normal! amage](" . relpath . ")"
	call setpos('.', ipos)
	execute "normal! ve\<C-g>"
endfunc

let g:mkdp_browser      = '/usr/bin/chromium'
let g:vim_markdown_math = 1

let g:vim_markdown_conceal = 1
let g:vim_markdown_conceal_code_blocks = 0
set conceallevel=2

" -- python
Plug 'vim-python/python-syntax', { 'for':['python']}
Plug 'tweekmonster/braceless.vim', {'for' :['python']}
Plug 'jpalardy/vim-slime', {'for':['python']}
let g:slime_no_mappings = 1
let g:slime_target = "tmux"
let g:slime_default_config = {"socket_name": "default", "target_pane": "{right-of}"}
let g:slime_cell_delimiter = "# %%"

let g:python_highlight_all = 1

let g:python3_host_prog = '/bin/python3'
let g:python_host_prog = '/bin/python2.7'

func! Ipython_SendAbove()
	let ipos = getcurpos()
	execute "normal vgg"
	execute "normal \<Plug>SlimeRegionSend"
	call setpos('.', ipos)
endfunc
autocmd FileType python let g:slime_python_ipython = 1
autocmd FileType python xmap <M-i> <Plug>SlimeRegionSend
autocmd FileType python nmap <M-c> <Plug>SlimeSendCell
autocmd FileType python map <M-a> :call Ipython_SendAbove()<CR>

" --rust
Plug 'rust-lang/rust.vim', {'for': ['rust']}
Plug 'racer-rust/vim-racer', {'for': ['rust']}
let g:rustfmt_autosave = 1
autocmd FileType rust nmap <silent><LEADER>f :RustFmt<CR>
autocmd FileType rust nmap <silent><LEADER>d <Plug>(rust-def)
autocmd FileType rust nmap <silent><F5> :w<CR>:RustRun<CR>
autocmd FileType rust nmap <silent><F6> :w<CR>:RustTest<CR>

" --dart
Plug 'dart-lang/dart-vim-plugin', {'for': ['dart']}

" --golang
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' , 'for' : ['go']}
let g:go_def_mapping_enabled		 = 0
let g:go_highlight_types			 = 1
let g:go_highlight_fields			 = 1
let g:go_highlight_functions		 = 1
let g:go_highlight_function_calls	 = 1
let g:go_highlight_extra_types		 = 1
let g:go_highlight_build_constraints = 1

let g:go_list_type         = "quickfix"
let g:go_fmt_command       = "goimports"
let g:go_fmt_fail_silently = 1

autocmd FileType go noremap <M-]> :cnext<CR>
autocmd FileType go noremap <M-[> :cprevious<CR>
autocmd FileType go noremap <M-r> :cclose<CR>
autocmd FileType go noremap <M-g> :GoImpl<CR>
autocmd FileType go noremap rn    :GoRename<CR>
autocmd FileType go nmap    <M-i> <Plug>(go-info)


autocmd FileType go nmap <silent><LEADER>f :GoFmt<CR>
autocmd FileType go nmap <silent><LEADER>d :GoDef<CR>
autocmd FileType go nmap <silent>rn		   :GoRename<CR>
autocmd FileType go nmap <silent><F5>	   :w<CR>:GoRun<CR>
autocmd FileType go nmap <silent><F6>	   :w<CR>:GoTest<CR>
autocmd FileType go nmap <silent><F7>	   :w<CR>:GoInstall<CR>
autocmd FileType go nmap <silent><F8>	   :w<CR>:GoDebugStart<CR>

call plug#end()


" themes ============================================
set termguicolors
color one

" visual plugins ====================================
" lightline

fun! HumanSize(bytes) abort
	let l:bytes = a:bytes
	let l:sizes = ['B', 'KiB', 'MiB', 'GiB']
	let l:i = 0
	while l:bytes >= 1024
		let l:bytes = l:bytes / 1024.0
		let l:i += 1
	endwhile
	return printf('%.1f%s', l:bytes, l:sizes[l:i])
endfun

set noshowmode
let g:lightline = {
			\ 'colorscheme': 'wombat',
			\ 'active': {
			\	'left': [ [ 'mode', 'paste' ],
			\				[ 'readonly', 'filename', 'humansize', 'modified'] ]
			\ },
			\ 'component': {
			\	'humansize' : "%{HumanSize(line2byte('$') + len(getline('$')))}"
			\ },
			\ }

" tmux

if executable('tmux') && filereadable(expand('~/.zshrc')) && $TMUX !=# ''
	let g:vimIsInTmux = 1
	let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
	let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
	set termguicolors
else
	let g:vimIsInTmux = 0
endif

if g:vimIsInTmux == 1
	let g:tmuxline_preset = {
				\'a'	: '#S',
				\'b'	: '%R',
				\'c'	: [ '#{sysstat_mem} #[fg=blue]\ufa51#{upload_speed}' ],
				\'win'	: [ '#I', '#W' ],
				\'cwin' : [ '#I', '#W', '#F' ],
				\'x'	: [ "#[fg=blue]#{download_speed} \uf6d9 #{sysstat_cpu}" ],
				\'y'	: [ '%a' ],
				\'z'	: '#H #{prefix_highlight}'
				\}
	let g:tmuxline_separators = {
				\ 'left' : "\ue0bc",
				\ 'left_alt': "\ue0bd",
				\ 'right' : "\ue0ba",
				\ 'right_alt' : "\ue0bd",
				\ 'space' : ' '}
endif



" python
autocmd FileType python BracelessEnable +indent +fold +highlight

"
" ======================= Maps ================================
" leader for normal&visual handler
let mapleader=" "
map <LEADER> <nop>
xmap <LEADER> <nop>

" ========= file ===========
" q - quit and not save
" w - save and not quit
" e - not save and reload
" r - quit and save
noremap q <ESC>:wq<CR>
noremap Q q

noremap <LEADER>q <ESC>:q!<CR>
noremap <LEADER>w <ESC>:w<CR>
noremap <LEADER>e <ESC>:e<CR>
noremap <LEADER>r <ESC>:wq<CR>
noremap <LEADER><LEADER>r :source ~/.config/nvim/init.vim<CR>

" ========= wins ===========
" h - screen left
" j - screen down
" k - screen up
" l - screen right
" - - screen prev
" = - screen next
" 1~9 tab 1~9
" 0 - close other tabs
noremap <silent><LEADER>h <C-w>h
noremap <silent><LEADER>j <C-w>j
noremap <silent><LEADER>k <C-w>k
noremap <silent><LEADER>l <C-w>l

noremap <silent><LEADER><LEADER>h <C-w>H
noremap <silent><LEADER><LEADER>j <C-w>J

noremap <silent><LEADER>- :-tabnext<CR>
noremap <silent><LEADER>= :+tabnext<CR>

noremap <silent><LEADER>1 1gt
noremap <silent><LEADER>2 2gt
noremap <silent><LEADER>3 3gt
noremap <silent><LEADER>4 4gt
noremap <silent><LEADER>5 5gt
noremap <silent><LEADER>6 6gt
noremap <silent><LEADER>7 7gt
noremap <silent><LEADER>8 8gt
noremap <silent><LEADER>9 9gt
noremap <silent><LEADER>0 :tabo<CR>

map s <nop>
noremap <silent>sh :set nosplitright<CR>:vnew<CR>
noremap <silent>sl :set splitright<CR>:vnew<CR>
noremap <silent>sj :set splitbelow<CR>:new<CR>
noremap <silent>sk :set nosplitbelow<CR>:new<CR>
noremap <silent>st :tabnew<CR>

noremap J 20j
noremap K 20k
noremap H 0
noremap L $

noremap <silent><LEADER><CR> :noh<CR>

" ========= oper ===========
" m - toggle mark
" [ - prev mark
" ] - next mark
noremap <silent><LEADER>m :BookmarkToggle<CR>
noremap <silent><LEADER>[ :BookmarkNext<CR>
noremap <silent><LEADER>] :BookmarkPrev<CR>

" s - select paragraph
" a - easy motion
" x - select a word
" f - format
" c - toggle comment
xmap <LEADER>a <Plug>(EasyAlign)
map  <LEADER>s vip
map  <LEADER>x <C-N>
map  <LEADER>z :call Toggle_fold()<CR>
func! Toggle_fold()
	if &foldlevel == 0
		set foldlevel=99
		echo 'unfold'
	else
		set foldlevel=0
		echo 'fold'
	endif
endfunc

xmap <LEADER>c <plug>NERDCommenterToggle
nmap <LEADER>c <plug>NERDCommenterToggle

map  <silent><LEADER>f :Autoformat<CR>
nmap <LEADER>t <Plug>TranslateW
xmap <LEADER>t <Plug>TranslateWV

nmap <silent><LEADER>/	:Farf<cr>
nmap <silent><LEADER>'	:Farr<cr>

" proxy
nmap <LEADER>p :!enableProxy<CR>

" code2img
xmap <LEADER>i :Silicon<CR>
" alt	 for everyMode handler
" h
" j
" k
" l
inoremap <A-h>	<Left>
inoremap <A-j>	<Down>
inoremap <A-k>	<Up>
inoremap <A-l>	<Right>


map <silent><F11> :Clap<CR>
map <silent><F12> :ScreenSaver<CR>

" ================ settings ======================
set nocompatible
set encoding=utf-8

syntax on
filetype on
filetype indent on
filetype plugin on
filetype plugin indent on

set hidden
set nobackup
set nowritebackup
set shortmess+=c

set nu
set cursorline
set nowrap
set showcmd
set wildmenu
set wildmode=longest,list,full
set noic
set autochdir
set autoindent

set noexpandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4

set scrolloff=4
set listchars=tab:␉·,nbsp:⎵,trail:·
set list

set foldlevel=99
set foldenable
set foldmethod=indent

set clipboard^=unnamedplus
set mouse=a

set hlsearch
set incsearch
set ignorecase
set smartcase

set splitright splitbelow
exec "nohlsearch"
