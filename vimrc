" 更改 leader
let mapleader = ","
" 关闭
set nocompatible
" 显示状态栏
set laststatus=2
" 显示光标当前位置
set ruler
" 高亮当前行
set cursorline
" 高亮当前列
set cursorcolumn
" 高亮显示搜索结果
set hlsearch
" 显示行号
set number
" 设置缩进
set cindent
" 用空格替换制表符
set expandtab
" 制表符占2空格
set tabstop=2
" 默认缩进两个空格
set shiftwidth=2
" 增量式搜索
set incsearch
" 匹配括号高亮
set showmatch
" 搜索忽略大小写，但有一个或以上大写字母时仍大小写敏感
set ignorecase smartcase
" 编码设置
set encoding=utf-8 fileencodings=ucs-bom,utf-8,cp936
" 启动 vim 时关闭折叠代码
set nofoldenable
" 设置 undo 为 ctrl-z
map <C-z> <Esc>u
" Remove trailing whitespaces and ^M chars
autocmd FileType c,ruby,cpp,java,go,php,javascript,python,rust,twig,xml,yml,sql autocmd BufWritePre <buffer> StripWhitespace
" autocmd FileType go autocmd BufWritePre <buffer> Fmt
autocmd BufNewFile,BufRead *.html.twig set filetype=html.twig
autocmd FileType ruby,yml setlocal expandtab shiftwidth=2 softtabstop=2
autocmd BufNewFile,BufRead *.coffee set filetype=coffee
" vundle 环境设置
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'mileszs/ack.vim'
Plugin 'Raimondi/delimitMate'
Plugin 'scrooloose/syntastic'
Plugin 'scrooloose/nerdtree'
Plugin 'altercation/vim-colors-solarized'
Plugin 'tomasr/molokai'
Plugin 'Shougo/neocomplete.vim'
Plugin 'vim-ruby/vim-ruby'
Plugin 'tpope/vim-rails'
Plugin 'slim-template/vim-slim'
Plugin 'kchmck/vim-coffee-script'
Plugin 'pangloss/vim-javascript'
Plugin 'mattn/emmet-vim'
Plugin 'othree/html5.vim'
Plugin 'luochen1990/rainbow'
Plugin 'honza/vim-snippets'
Plugin 'fatih/vim-go'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'tpope/vim-fugitive'
Plugin 'airblade/vim-gitgutter'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'plasticboy/vim-markdown'
Plugin 'tpope/vim-endwise'
Plugin 'ntpeters/vim-better-whitespace'
Plugin 'Chiel92/vim-autoformat'
call vundle#end()

" 检测文件类型
filetype on
filetype plugin on
filetype indent on

" NERDTree 配置
nmap <F3> :NERDTreeToggle<cr>
" Autoformat 配置
nmap <F5> :Autoformat<CR>
" 设置主题
syntax enable
" 设置背景颜色
set background=dark
colorscheme molokai
let g:molokai_original = 1
" 启动 rainbow
let g:rainbow_active = 1
" emmet 只启动 html/css
let g:user_emmet_install_global = 0
" 启动 airline
let g:airline#extensions#tabline#enabled = 1
" 关闭 markdown 折叠
let g:vim_markdown_folding_disabled = 1
autocmd FileType html,css EmmetInstall
" 配置 neocomplete
let g:neocomplete#enable_at_startup = 1
" 开启语法
syntax on
hi Visual term=reverse cterm=reverse guibg=Grey
