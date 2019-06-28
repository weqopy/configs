syntax on " 允许按指定主题进行语法高亮，而非默认高亮主题
set nocompatible " be iMproved, required
filetype off " required

syntax enable
" set background=dark
"let g:solarized_termcolors=256
colorscheme solarized

" Vundle-Plugin
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'tell-k/vim-autopep8'
Plugin 'jiangmiao/auto-pairs'
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'Valloric/YouCompleteMe'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'tmhedberg/SimpylFold'
Plugin 'w0rp/ale'
Plugin 'scrooloose/nerdtree'
call vundle#end()
filetype plugin indent on    " required


" 去除滚动条
set guioptions-=r
set guioptions-=L
set guioptions-=b

set guifont=Monaco:h12 " 字体
set guicursor=a:ver20-blinkon0 " 设置光标，a 所有模式，100, 100%高度，无闪烁，ver 垂直线，hor 水平线
" set cursorline " 高亮所在行
" set cursorcolumn
hi Cursorline cterm=NONE ctermbg=gray ctermfg=green guibg=NONE guifg=NONE
hi Cursorcolumn cterm=NONE ctermbg=gray ctermfg=green guibg=NONE guifg=NONE
set smartindent " 智能换行
set autoindent " 自动换行
set confirm " 在处理未保存或只读文件的时候，弹出确认
set tabstop=4
set softtabstop=4 " 统一缩进为4
set shiftwidth=4 " 统一缩进为4
" set textwidth=79
set fileformat=unix
set expandtab " 使用空格代替制表符
set number " 显示行数
set relativenumber
set encoding=utf-8 " 编码
set fileencodings=utf-8,ucs-bom,shift-jis,gb18030,gbk,gb2312,cp936,utf-16,big5,euc-jp,latin1 " 设置多编码处理
set langmenu=zn_CN.UTF-8
set helplang=cn " 帮助系统语言
set ruler " 打开状态栏标尺
set showmatch " 代码匹配

set ignorecase smartcase " 检索时忽略大小写
set hls " 检索时高亮显示匹配项
set incsearch " 输入搜索内容时就显示搜索结果
set hlsearch " 搜索时高亮显示被找到的文本
set backspace=2

" 去除提示音
set noerrorbells
set novisualbell
set vb t_vb=

set laststatus=2 " 显示状态栏
set statusline=\ %F\ %=\ %m\ %Y\ [%v-%l-%L/%p%%]
set showcmd " 显示当前输入的命令

" 切换布局
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

"缩进指示线"
let g:indentLine_char='|'
let g:indentLine_enabled = 1

"补全后自动关闭预览窗口"
let g:ycm_autoclose_preview_window_after_completion=1
"离开插入模式后自动关闭预览窗口"
autocmd InsertLeave * if pumvisible() == 0|pclose|endif
"是否在注释中也开启补全"
let g:ycm_complete_in_comments=1
let g:ycm_collect_identifiers_from_comments_and_strings = 0
"字符串中也开启补全"
let g:ycm_complete_in_strings = 1
let g:ycm_server_python_interpreter = '/usr/local/bin/python3'
let g:ycm_key_list_select_completion = ['<TAB>']
let g:ycm_min_num_of_chars_for_completion = 3
set completeopt-=preview 


let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_custom_ignore = {
    \ 'dir':  '\v[\/]\.(git|hg|svn|rvm)$',
    \ 'file': '\v\.(exe|so|dll|zip|tar|tar.gz|pyc)$',
    \ }
set wildignore+=*/venv/*
let g:ctrlp_working_path_mode=0
let g:ctrlp_match_window_bottom=1
let g:ctrlp_max_height=15
let g:ctrlp_match_window_reversed=0
let g:ctrlp_mruf_max=500
let g:ctrlp_follow_symlinks=1

" 空格键折叠代码
set foldmethod=indent
set foldlevel=99
nnoremap <space> za
let g:SimpylFold_doctring_priview=1

" 关闭NERDTree快捷键
map <C-n> :NERDTreeToggle<CR>
" 显示行号
let NERDTreeShowLineNumbers=1
let NERDTreeAutoCenter=1
" 是否显示隐藏文件
let NERDTreeShowHidden=0
" 设置宽度
let NERDTreeWinSize=31
" 在终端启动vim时，共享NERDTree
let g:nerdtree_tabs_open_on_console_startup=1
" 忽略一下文件的显示
let NERDTreeIgnore=['\.pyc','\~$','\.swp']
" 显示书签列表
let NERDTreeShowBookmarks=1

nnoremap <F5> :w<cr>:!python3 %<cr>
nnoremap <F6> :w<cr>:!python3 -i %<cr>

" ale
"自定义error和warning图标
let g:ale_sign_error = '✗'
let g:ale_sign_warning = '⚡'
let g:ale_statusline_format = ['✗ %d', '⚡ %d', '✔ OK']
let g:ale_lint_on_insert_leave = 1
let g:ale_sign_colum_always = 1
let g:ale_echo_msg_error_str = 'E'
let g:ale_echo_msg_warning_str = 'W'
let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'
let g:ale_linters = {'python': ['pylint']}
let g:ale_completion_enabled = 1

" python-mode
let g:pymode_python = 'python3'


if has('python3')
  set pythonthreehome=/usr/local/Frameworks/Python.framework/Versions/3.7
endif

