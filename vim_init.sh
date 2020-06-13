syntax on " 允许按指定主题进行语法高亮，而非默认高亮主题
set nocompatible " be iMproved, required
filetype off " required

syntax enable

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

"缩进指示线"
let g:indentLine_char='|'
let g:indentLine_enabled = 1
