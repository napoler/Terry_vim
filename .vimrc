set encoding=utf-8
set termencoding=utf-8

set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr
set fileencoding=utf-8

set nocompatible              " be iMproved, required
filetype off                  " required


" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
 




" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()



" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
"tabnine自动补全
Plugin 'zxqfl/tabnine-vim'
"显示缩进
Plugin 'nathanaelkane/vim-indent-guides'
"配置缩进信息
let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_auto_colors = 0
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=white   ctermbg=3
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=green ctermbg=90

"status line
Plugin 'vim-airline/vim-airline'


" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
" 集成git
Plugin 'tpope/vim-fugitive'

" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
"Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

"模糊搜索
Plugin 'kien/ctrlp.vim'
"配置快捷键
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP' 
let g:ctrlp_working_path_mode = 'ra'

" 文件管理器
"Plugin 'weirongxu/coc-explorer' 



"                                 airline 插件配置 
" --------------------------------------------------------------------------------------------
set laststatus=2                " 默认打开airline
" let g:airline#extensions#tabline#enabled = 1      " 打开tabline








" shell 里的文件管理器在 vim 中的实现，需要先安装 shell 里的文件管理器：
Plugin 'francoiscabrol/ranger.vim'
"拓展语言包
Plugin 'sheerun/vim-polyglot'

" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
Plugin 'junegunn/vim-easy-align'

" Any valid git URL is allowed
Plugin 'https://github.com/junegunn/vim-github-dashboard.git'

Plugin 'https://github.com/mhinz/vim-startify.git'
"注释
Plugin 'preservim/nerdcommenter' 

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


"显示目录树
Plugin 'preservim/nerdtree'

autocmd vimenter * NERDTree  "自动开启Nerdtree
"let g:NERDTreeWinSize = 25 "设定 NERDTree 视窗大小
"开启/关闭nerdtree快捷键
map <C-f> :NERDTreeToggle<CR>
"let NERDTreeShowBookmarks=1  " 开启Nerdtree时自动显示Bookmarks
"打开vim时如果没有文件自动打开NERDTree
autocmd vimenter * if !argc()|NERDTree|endif
"当NERDTree为剩下的唯一窗口时自动关闭
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
"设置树的显示图标
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'
let NERDTreeIgnore = ['\.pyc$']  " 过滤所有.pyc文件不显示
"let g:NERDTreeShowLineNumbers=1  " 是否显示行号
let g:NERDTreeHidden=0     "不显示隐藏文件
"Making it prettier
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1








" All of your Plugins must be added before the following line
call vundle#end()            " required


filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:

filetype plugin on
"
" Brief help 帮助
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

"显示行号
set number