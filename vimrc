set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
""" plugin on GitHub repo
""Plugin 'tpope/vim-fugitive'
""" plugin from http://vim-scripts.org/vim/scripts.html
""Plugin 'L9'
""" Git plugin not hosted on GitHub
""Plugin 'git://git.wincent.com/command-t.git'
""" git repos on your local machine (i.e. when working on your own plugin)
""Plugin 'file:///home/gmarik/path/to/plugin'
""" The sparkup vim script is in a subdirectory of this repo called vim.
""" Pass the path to set the runtimepath properly.
""Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Avoid a name conflict with L9
Plugin 'The-NERD-Tree'
Plugin 'fholgado/minibufexpl.vim'
Plugin 'noah/vim256-color'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1
syntax on
set nocompatible " 关闭 vi 兼容模式
syntax on " 自动语法高亮
set number " 显示行号
set cursorline " 突出显示当前行
set ruler " 打开状态栏标尺
set shiftwidth=4 " 设定 << 和 >> 命令移动时的宽度为 4
set softtabstop=4 " 使得按退格键时可以一次删掉 4 个空格
set tabstop=4 " 设定 tab 长度为 4
set smarttab
set expandtab
set nobackup " 覆盖文件时不备份
set noswapfile "关闭交换文件
set autochdir " 自动切换当前目录为当前文件所在的目录
set foldenable              " 开始折叠
set showcmd
filetype plugin indent on " 开启插件ndif
filetype plugin on
set ai
set si
set history=100
colorscheme 256-jungle
autocmd FileType javascrīpt set omnifunc=javascrīptcomplete#CompleteJS
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
autocmd FileType xml set omnifunc=xmlcomplete#CompleteTags
autocmd FileType php set omnifunc=phpcomplete#CompletePHP
" 快捷输入
" 自动完成括号和引号
inoremap ( ()<LEFT>
inoremap [ []<LEFT>
inoremap { {}<LEFT>
inoremap < <><LEFT>
inoremap ' ''<LEFT>
inoremap " ""<LEFT>

nmap <silent> <F2> :execute 'NERDTreeToggle ' . getcwd()<CR>
let NERDTreeMouseMode=2
let NERDTreeShowBookmarks=1

  map <Leader>mbe :MBEOpen<cr>
  map <Leader>mbc :MBEClose<cr>
  map <Leader>mbt :MBEToggle<cr>

    noremap <TAB>   :MBEbn<CR>
    noremap <S-TAB> :MBEbp<CR>
