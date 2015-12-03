" ------------Vundle Config---------------
set nocompatible              "不兼容vi，Vundle必须配置
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" The following are examples of different formats supported.
Plugin 'https://github.com/scrooloose/nerdtree'
Plugin 'tagbar'
Plugin 'Lokaltog/vim-powerline'
Plugin 'https://github.com/Valloric/YouCompleteMe'

" All of your Plugins must be added before the following line
call vundle#end()            " required

filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line



" ------------Molokai主题---------------
let g:molokai_original = 1
let g:rehash256 = 1
syntax on
" Javascript syntax hightlight
syntax enable
" Set syntax highlighting for specific file types
autocmd BufRead,BufNewFile Appraisals set filetype=ruby
autocmd BufRead,BufNewFile *.md set filetype=markdown
autocmd Syntax javascript set syntax=jquery

"colorscheme molokai
highlight NonText guibg=#060606
highlight Folded  guibg=#0A0A0A guifg=#9090D0



" ------------空格和tab设置---------------
" Backspace deletes like most programs in insert mode
set backspace=2
" Softtabs, 2 spaces
set tabstop=2
set shiftwidth=2
set shiftround
set expandtab
" 对于额外的空格和tab的显示形式
set list listchars=tab:»·,trail:·



" ------------ruler和高亮标识---------------
" Show the cursor position all the time
set ruler
"在一行的80个字符处显示高亮
set textwidth=80
set colorcolumn=+1
" Highlight current line
au WinLeave * set nocursorline nocursorcolumn
au WinEnter * set cursorline cursorcolumn
set cursorline cursorcolumn




"-------------设置文件encoding模式-------------
set fileencodings=utf-8,bg18030,gbk,big5



"-------------行号设置-------------
set number
set rnu
set numberwidth=6



"-------------NERD tree--------------
let NERDChristmasTree=0
let NERDTreeWinSize= 20
let NERDTreeChDirMode=2
let NERDTreeIgnore=['\~$', '\.pyc$', '\.swp$']
let NERDTreeShowBookmarks=1
let NERDTreeWinPos="left"
" Close vim if the only window left open is a NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
" Open a NERDTree
nmap <F5> :NERDTreeToggle<cr>
" 符号定制
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'


"-------------tagBar相关--------------
let g:tagbar_width= 20
let g:tagbar_autofocus=1
nmap <F6> :TagbarToggle<CR>

" tagbar support markdown
let g:tagbar_type_markdown = {
    \ 'ctagstype' : 'markdown',
    \ 'kinds' : [
        \ 'h:Heading_L1',
        \ 'i:Heading_L2',
        \ 'k:Heading_L3'
    \ ]
\ }



"-------------powerLine statusBar相关--------------
set laststatus=2 " Always display the status line
set statusline+=%{fugitive#statusline()} "  Git Hotness




"-------------search相关--------------
" 即时查找
set incsearch
" 忽略大小写
set ignorecase
" 高亮查找
set hlsearch


"-------------crontab相关--------------
" 在mac下支持crontab -e
autocmd filetype crontab setlocal nobackup nowritebackup


"-------------鼠标相关--------------
"在vim中支持鼠标
set mouse=a


" ------------tag相关----------------
" 在新的窗口打开tag，使用ctrl + \
map <C-\> :tab split<CR>:exec("tag ".expand("<cword>"))<CR>
" 自动向前寻找tag
set tags+=./../tags,./../../tags,./../../../tags

" ------------shell相关----------------
" 使用ctrl + n 打开zsh，如果更换了shell需要修改
map <C-n> :!zsh<CR>
