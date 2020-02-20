" 基础设置
" ==========================================================
" 去掉vi一致性模式，避免BUG
set nocompatible

" 语法高亮显示
syntax on
syntax enable

" 设置背景颜色为黑色
set background=dark

" 设置vim的默认启动窗口大小
set lines=50 columns=180

" 根据不同文件加载不同高亮和缩进
filetype plugin indent on

" 把制表格转成空格
set expandtab
" 删除时把空格转成制表格
set tabstop=2
set shiftwidth=2
set softtabstop=2
set backspace=indent,start
" 设置vim自动对齐
set autoindent
set cindent
set smartindent

" 开启实时搜索功能
set incsearch
set ignorecase
set hlsearch

" 禁止显示滚动条
set guioptions-=l
set guioptions-=L
set guioptions-=r
set guioptions-=R
set guioptions-=m
set guioptions-=T
" 禁止光标闪烁
set gcr+=a:blinkon0

" 设置光标所在行高亮
set cursorline
" 开启行号显示
set number

" 设置文件编码格式
set encoding=utf-8
set termencoding=utf-8
set fileencodings=utf-8,gb2312,gbk,gb18030

" 倒入系统剪贴板
set clipboard=unnamed

" 设置vim的插件
" ==========================================================
call plug#begin('~/.vim/plugged')

" 文件浏览器设置
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }

" vim的git管理插件
Plug 'tpope/vim-fugitive'

" 代码调试工具
" Plug 'puremourning/vimspector'

" 代码折叠插件
" Plug 'tmhedberg/SimpylFold'

" 代码缩进插件
Plug 'nathanaelkane/vim-indent-guides'
Plug 'jistr/vim-nerdtree-tabs'

" python插件
Plug 'scrooloose/syntastic'
Plug 'nvie/vim-flake8'

" C++插件
Plug 'octol/vim-cpp-enhanced-highlight'

" 辅助vim全屏插件
Plug 'rmsr/wmctrl.vim'

" Plug 'junegunn/vim-easy-align'
" Plug 'skywind3000/quickmenu.vim'


" Plug 'tpope/vim-fireplace', { 'for': 'clojure' }

" 确定插件仓库中的分支或者 tag
" Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }
" Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }

" 美化vim的界面
Plug 'kien/ctrlp.vim'
Plug 'vim-airline/vim-airline'
Plug 'morhetz/gruvbox'
call plug#end()
" ==========================================================


" 设置vim的主题
colorscheme gruvbox
" 设置vim全屏函数
fun! ToggleFullscreen()
    call system("wmctrl -ir " . v:windowid . " -b toggle,fullscreen")
endf

" 设置vim缩进guides
let g:indent_guides_enable_on_vim_startup=1
let g:indent_guides_start_level=2
let g:indent_guides_guide_size=1

" 设置语言调试映射
" let g:vimspector_enable_mappings = 'HUMAN'

" 设置vim的快捷键设置
" ==========================================================
map <F2> :NERDTreeToggle<CR>

" 全屏开/关快捷键
map <silent> <F11> :call ToggleFullscreen()<CR>

" vim启动项
" ==========================================================
" 让配置变更立即生效
autocmd BufWritePost $MYVIMRC source $MYVIMRC
" 让python的缩进为2格
autocmd FileType python set shiftwidth=2 tabstop=2 
" 通过文件类型开启不同缩进模式
autocmd FileType python set fdm=indent
autocmd FileType c set fdm=syntax
autocmd FileType cpp set fdm=syntax
autocmd FileType h set fdm=syntax
" 设置正常模式space键折叠
nnoremap <space> za  
" 设置vim折叠
set foldenable
" 设置vim默认不折叠
set foldlevelstart=99

" 启动vim时自动全屏
" autocmd VimEnter * call ToggleFullscreen()
