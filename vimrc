" 更改 leader
let mapleader = ","
" 可以使用 delete 键
set backspace=indent,eol,start
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
" 设置支持鼠标
set mouse=a
" 编码设置
set encoding=utf-8 fileencodings=ucs-bom,utf-8,cp936
" 启动 vim 时关闭折叠代码
set nofoldenable
" 设置 undo 为 ctrl-z
map <C-z> <Esc>u
" 设置 tab 变换
map <C-Tab> <Esc>gt
map <C-S-Tab> <Esc>gT
imap <C-Tab> <Esc>gt
imap <C-S-Tab> <Esc>gT
vmap <C-Tab> <Esc>gt
vmap <C-S-Tab> <Esc>gT
map H <Esc>gT
map L <Esc>gt
" Remove trailing whitespaces and ^M chars
autocmd FileType c,ruby,cpp,java,go,php,javascript,python,rust,twig,xml,yml,sql autocmd BufWritePre <buffer> StripWhitespace
" autocmd FileType go autocmd BufWritePre <buffer> Fmt
autocmd BufNewFile,BufRead *.html.twig set filetype=html.twig
autocmd FileType ruby,yml setlocal expandtab shiftwidth=2 softtabstop=2
autocmd BufNewFile,BufRead *.coffee set filetype=coffee
autocmd BufNewFile,BufRead *.slim setlocal filetype=slim
" 设置 python 缩进
autocmd Filetype python setlocal expandtab tabstop=4 shiftwidth=4
" vundle 环境设置
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'mileszs/ack.vim'
Plugin 'Raimondi/delimitMate'
" Plugin 'scrooloose/syntastic'
Plugin 'w0rp/ale'
Plugin 'scrooloose/nerdtree'
Plugin 'altercation/vim-colors-solarized'
Plugin 'tomasr/molokai'
Plugin 'Shougo/neocomplete.vim'
Plugin 'vim-ruby/vim-ruby'
Plugin 'python-mode/python-mode'
Plugin 'elixir-lang/vim-elixir'
Plugin 'slashmili/alchemist.vim'
" Plugin 'davidhalter/jedi-vim'
Plugin 'tpope/vim-rails'
Plugin 'slim-template/vim-slim'
Plugin 'digitaltoad/vim-pug'
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
Plugin 'scrooloose/nerdcommenter'
Plugin 'Valloric/MatchTagAlways'
Plugin 'jiangmiao/auto-pairs'
Plugin 'nsf/gocode'
Plugin 'Valloric/YouCompleteMe'
call vundle#end()

" 检测文件类型
filetype on
filetype plugin on
filetype indent on

" NERDTree 配置
nmap <F3> :NERDTreeToggle<cr>
" 显示 dotfile
" let NERDTreeShowHidden=1
" Autoformat 配置
nmap <F5> :Autoformat<CR>
nmap <F6> <Esc>:tabedit<CR>
" 设置主题
syntax enable
" 设置 nerdcommenter 注释多一个空格
let NERDSpaceDelims=1
" 设置背景颜色
"set background=dark
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
" 配置 ack 命令
let g:ackprg="ack-grep -H --nocolor --nogroup --column -i log"
let g:ackprg = 'ag --nogroup --nocolor --column'
" 配置 ctrlp 命令
let g:ctrlp_cmd='CtrlP :pwd'
let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_max_files=0
let g:ctrlp_max_depth=40
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git'
" syntastic 配置
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_eruby_ruby_quiet_messages =
    \ {'regex': 'possibly useless use of'}
autocmd FileType html,css EmmetInstall
" 配置 neocomplete
let g:neocomplete#enable_at_startup = 1
let g:neocomplete#sources#omni#input_patterns = {
  \   "ruby" : '[^. *\t]\.\w*\|\h\w*::',
  \}
let g:pymode_rope = 0
let g:pymode_folding = 0
" 开启语法
syntax on
hi Visual term=reverse cterm=reverse guibg=Grey
