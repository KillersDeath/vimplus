"
"             __                __          
"     __   __/_/___ ___  ____  / /_  _______
"     \ \ / / / __ `__ \/ __ \/ / / / / ___/
"      \ V / / / / / / / /_/ / / /_/ (__  )
"       \_/_/_/ /_/ /_/ ,___/_/\____/____/
"                    /_/
"            
"
" Author: zhangliujie <liujiezhangbupt@gmail.com>
" Repository: https://github.com/KillersDeath/vimplus
" Create Date: 2018-04-10
" License: MIT

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 通用设置
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let mapleader = ","      " 定义<leader>键
set nocompatible         " 设置不兼容原始vi模式
filetype on              " 设置开启文件类型侦测
filetype plugin on       " 设置加载对应文件类型的插件
set noeb                 " 关闭错误的提示
syntax enable            " 开启语法高亮功能
syntax on                " 自动语法高亮
set t_Co=256             " 开启256色支持
set cmdheight=2          " 设置命令行的高度
set showcmd              " select模式下显示选中的行数
set ruler                " 总是显示光标位置
set laststatus=2         " 总是显示状态栏
set number               " 开启行号显示
set relativenumber       " 设置相对行号
set cursorline           " 高亮显示当前行
set whichwrap+=<,>,h,l   " 设置光标键跨行
set virtualedit=block,onemore   " 允许光标出现在最后一个字符的后面
" Toggle Relative Number
nnoremap <silent> <leader>nb :set relativenumber!<CR>
" Home & End should be placed next to each other
nnoremap - $
" 不让vim发出讨厌的滴滴声
set noerrorbells
" 告诉我们文件的哪一行被改变过
set report=0
" 可以在buffer的任何地方使用鼠标
set mouse=a
set selection=exclusive
set selectmode=mouse,key
" 设置更新时间
set updatetime=250

" Select all text
nnoremap vA ggVG
" Quick Save
nnoremap <S-s> :w<CR>
" Map jk to ESC in insert mode
inoremap jk <esc>
" Shift to the next round tab stop.
set shiftround
" Set auto indent spacing.
set shiftwidth=2

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 代码缩进和排版
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set autoindent           " 设置自动缩进
set cindent              " 设置使用C/C++语言的自动缩进方式
set cinoptions=g0,:0,N-s,(0    " 设置C/C++语言的具体缩进方式
set smartindent          " 智能的选择对其方式
filetype indent on       " 自适应不同语言的智能缩进
set expandtab            " 将制表符扩展为空格
set tabstop=4            " 设置编辑时制表符占用空格数
set shiftwidth=4         " 设置格式化时制表符占用空格数
set softtabstop=4        " 设置4个空格为制表符
set smarttab             " 在行和段开始处使用制表符
set nowrap               " 禁止折行
set backspace=2          " 使用回车键正常处理indent,eol,start等

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 代码补全
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set wildmenu             " vim自身命名行模式智能补全
set completeopt-=preview " 补全时不显示窗口，只显示补全列表

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 搜索设置
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set hlsearch            " 高亮显示搜索结果
set incsearch           " 开启实时搜索功能
set ignorecase          " 搜索时大小写不敏感

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 代码折叠
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set foldmethod=syntax   " 设置基于语法进行代码折叠
set nofoldenable        " 关闭折叠代码

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 缓存设置
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nobackup            " 设置不备份
set noswapfile          " 禁止生成临时文件
set autoread            " 文件在vim之外修改过，自动重新读入
set autowrite           " 设置自动保存
set confirm             " 在处理未保存或只读文件的时候，弹出确认

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 编码设置
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set langmenu=zh_CN.UTF-8
set helplang=cn
set termencoding=utf-8
set encoding=utf8
set fileencodings=utf8,ucs-bom,gbk,cp936,gb2312,gb18030

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 插件列表
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
call plug#begin('~/.vim/plugged')
" C
Plug 'chxuan/cppfun'
Plug 'majutsushi/tagbar'
Plug 'vim-scripts/a.vim'
Plug 'tmhedberg/SimpylFold'
Plug 'octol/vim-cpp-enhanced-highlight'
" Go
Plug 'fatih/vim-go'
" python
Plug 'tell-k/vim-autopep8'
Plug 'rkulla/pydiction'
" 补全
Plug 'Valloric/YouCompleteMe'
Plug 'Yggdroot/indentLine'
Plug 'vim-scripts/DoxygenToolkit.vim'
" 界面和状态栏
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'scrooloose/nerdcommenter'
Plug 'chxuan/change-colorscheme'
Plug 'chxuan/vimplus-startify'
Plug 'godlygeek/tabular'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'terryma/vim-expand-region'
" 编辑预览
Plug 'iamcco/mathjax-support-for-mkdp'
Plug 'iamcco/markdown-preview.vim'
" 搜索
Plug 'Yggdroot/LeaderF'
Plug 'mileszs/ack.vim'
" git
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
" 通用
Plug 'easymotion/vim-easymotion'
Plug 'haya14busa/incsearch.vim'
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-endwise'
Plug 'vim-scripts/L9'
Plug 'ryanoasis/vim-devicons'
Plug 'junegunn/vim-slash'
Plug 'junegunn/gv.vim'
Plug 'Shougo/echodoc.vim'
Plug 'iamcco/mathjax-support-for-mkdp'
Plug 'rstacruz/sparkup', {'rtp': 'vim/'}
Plug 'Valloric/MatchTagAlways'
Plug 'gorodinskiy/vim-coloresque'
Plug 'jpalardy/vim-slime'
Plug 'vim-syntastic/syntastic'

call plug#end()            


" load vim default plugin
runtime macros/matchit.vim

" 编辑vimrc文件
nnoremap <leader>e :edit $MYVIMRC<cr>

" 查看vimplus的help文件
nnoremap <leader>h :edit ~/.vimplus/help.md<cr>

" 打开当前光标所在单词的vim帮助文档
nnoremap <leader>H :execute ":help " . expand("<cword>")<cr>

" 重新加载vimrc文件
nnoremap <leader>s :source $MYVIMRC<cr>

" 安装、更新、删除插件
nnoremap <leader><leader>i :PlugInstall<cr>
nnoremap <leader><leader>u :PlugUpdate<cr>
nnoremap <leader><leader>c :PlugClean<cr>

" buffer切换
nnoremap <c-n> :bn<cr>
nnoremap <c-p> :bp<cr>
nnoremap <leader>d :bd<cr>

" 主题
set background=dark
let g:onedark_termcolors=256
colorscheme onedark

" airline
let g:airline_theme="onedark"
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''

" cppfun
nnoremap <leader>y :CopyFun<cr>
nnoremap <leader>p :PasteFun<cr>
nnoremap <leader><leader>fp :FormatFunParam<cr>
nnoremap <leader><leader>if :FormatIf<cr>

" change-colorscheme
nnoremap <silent> <F9> :PreviousColorScheme<cr>
inoremap <silent> <F9> <esc> :PreviousColorScheme<cr>
nnoremap <silent> <F10> :NextColorScheme<cr>
inoremap <silent> <F10> <esc> :NextColorScheme<cr>
nnoremap <silent> <F11> :RandomColorScheme<cr>
inoremap <silent> <F11> <esc> :RandomColorScheme<cr>
nnoremap <silent> <F12> :ShowColorScheme<cr>
inoremap <silent> <F12> <esc> :ShowColorScheme<cr>

"split navigations
nnoremap <Leader>wj <C-W>j
nnoremap <Leader>wk <C-W>k
nnoremap <Leader>wl <C-W>l
nnoremap <Leader>wh <C-W>h

" nerdtree
nnoremap <silent> <leader>n :NERDTreeToggle<cr>
inoremap <silent> <leader>n <esc> :NERDTreeToggle<cr>
let g:NERDTreeFileExtensionHighlightFullName = 1
let g:NERDTreeExactMatchHighlightFullName = 1
let g:NERDTreePatternMatchHighlightFullName = 1
let g:NERDTreeHighlightFolders = 1         
let g:NERDTreeHighlightFoldersFullName = 1 
let g:NERDTreeDirArrowExpandable='▷'
let g:NERDTreeDirArrowCollapsible='▼'

" map <Leader>L <Plug>(easymotion-bd-jk)
" nmap <Leader>L <Plug>(easymotion-overwin-line)
map <Leader>n :NERDTreeToggle<CR>
imap <Leader>n <ESC> :NERDTreeToggle<CR>
"autocmd vimenter * if !argc() | NERDTree | endif
"autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

" Doxygen
let g:DoxygenToolkit_authorName="Kevin, liujiezhangbupt@gmail.com"
let s:licenseTag = "Copyright(C)\<enter>"
let s:licenseTag = s:licenseTag . "For free\<enter>"
let s:licenseTag = s:licenseTag . "All right reserved\<enter>"
let g:DoxygenToolkit_licenseTag = s:licenseTag
let g:DoxygenToolkit_briefTag_funcName="yes"
let g:doxygen_enhanced_color=1
let g:DoxygenToolkit_commentType="vim"

let g:DoxygenToolkit_briefTag_pre="@Synopsis  "
let g:DoxygenToolkit_paramTag_pre="@Param "
let g:DoxygenToolkit_returnTag="@Returns   "
let g:DoxygenToolkit_blockHeader="--------------------------------------------------------------------------"
let g:DoxygenToolkit_blockFooter="---------------------------------------------------------------------------"


" YCM
let g:ycm_confirm_extra_conf = 0 
let g:ycm_error_symbol = '>>'
let g:ycm_warning_symbol = '>*'
let g:ycm_seed_identifiers_with_syntax = 1 
let g:ycm_complete_in_comments = 1 
let g:ycm_complete_in_strings = 1 

nnoremap <leader>u :YcmCompleter GoToDeclaration<cr>
nnoremap <leader>i :YcmCompleter GoToDefinition<cr>
"nnoremap <leader>o :YcmCompleter GoToInclude<cr>
nnoremap <leader>ff :YcmCompleter FixIt<cr>
nmap <F5> :YcmDiags<cr>

"let g:ycm_cache_omnifunc = 0 
"set python interpreter
let g:ycm_python_binary_path = 'python3'
"python with virtualenv support
" py << EOF
" import os
" import sys
" if 'VIRTUAL_ENV' in os.environ:
"   project_base_dir = os.environ['VIRTUAL_ENV']
"   activate_this = os.path.join(project_base_dir, 'bin/activate_this.py')
"   execfile(activate_this, dict(__file__=activate_this))
" EOF

"NERDTree
"自动打开目录
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif

"nerdtree-git-plugin
let g:NERDTreeIndicatorMapCustom = {
    \ "Modified"  : "✹",
    \ "Staged"    : "✚",
    \ "Untracked" : "✭",
    \ "Renamed"   : "➜",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "✖",
    \ "Dirty"     : "✗",
    \ "Clean"     : "✔︎",
    \ 'Ignored'   : '☒',
    \ "Unknown"   : "?"
    \ }


" a.vim: .h -> .cpp or .cpp -> .h
nnoremap <silent> <leader>a :A<cr>

" tagbar
let g:tagbar_width = 30
nnoremap <silent> <leader>t :TagbarToggle<cr>
inoremap <silent> <leader>t <esc> :TagbarToggle<cr>
map <Leader>t :TagbarToggle<CR>
imap <Leader>t <ESC> :TagbarToggle<CR>

" SimpylFold


" colorscheme
set background=dark
let g:solarized_termcolors=256
"colorscheme solarized
"colorscheme monokai

" cpp_class_scope_highlight
let g:cpp_class_scope_highlight = 1
let g:cpp_experimental_template_highlight = 1
let c_no_curly_error = 1



" vim-devicons
set guifont=Droid\ Sans\ Mono\ for\ Powerline\ Nerd\ Font\ Complete:h12

" incsearch.vim
map /  <Plug>(incsearch-forward)
map ?  <Plug>(incsearch-backward)
map g/ <Plug>(incsearch-stay)

" markdown
let uname = system('uname -s')
if uname == "Darwin\n"
    let g:mkdp_path_to_chrome = "/Applications/Google\\ Chrome.app/Contents/MacOS/Google\\ Chrome"
else
    let g:mkdp_path_to_chrome = '/usr/bin/google-chrome-stable %U'
endif
nmap <silent> <F7> <Plug>MarkdownPreview
imap <silent> <F7> <Plug>MarkdownPreview
nmap <silent> <F8> <Plug>StopMarkdownPreview
imap <silent> <F8> <Plug>StopMarkdownPreview

" vim-easymotion
let g:EasyMotion_smartcase = 1
map <leader>w <Plug>(easymotion-bd-w)
nmap <leader>w <Plug>(easymotion-overwin-w)

" pydiction
let g:pydiction_location='~/.vim/plugged/pydiction/complete-dict'
let g:pydiction_menu_height=10


" LeaderF
nnoremap <leader>f :LeaderfFile ~<cr>
let g:Lf_WildIgnore = {
            \ 'dir': ['.svn','.git','.hg','.vscode','.wine','.deepinwine','.oh-my-zsh'],
            \ 'file': ['*.sw?','~$*','*.bak','*.exe','*.o','*.so','*.py[co]']
            \}
let g:Lf_UseCache = 0

" ack
nnoremap <Leader>F :Ack!<space>

" echodoc.vim
let g:echodoc_enable_at_startup = 1

" tabular
nnoremap <leader>l :Tab /\| <cr>
nnoremap <leader>= :Tab /= <cr>


" gv
nnoremap <leader>g :GV<cr>
nnoremap <leader>G :GV!<cr>
nnoremap <leader>gg :GV?<cr>

" Quickly run python
nnoremap <leader>r :call AutoRunPython()<CR>
func! AutoRunPython()
    exec "w"
    if &filetype == 'python'
        exec '!time python %'
    endif
endfunc

" autopep8
let g:autopep8_ignore="E501,W293"
let g:autopep8_select="E501,W293"
let g:autopep8_pep8_passes=100
let g:autopep8_max_line_length=120
" disable show diff window
let g:autopep8_disable_show_diff=1
let g:autopep8_on_save=1

" vim-slime
let g:slime_target="tmux"

" syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_polulate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_python_checkers = ['pylint']

" set python quickly debugging
map<silent> <leader><leader>b oimport ipdb;ipdb.set_trace(context=5)<esc>
" 个性化
if filereadable(expand($HOME . '/.vimrc.local'))
    source $HOME/.vimrc.local
endif
