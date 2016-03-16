colorscheme SolarizedDark_modified
syntax on                                               "语法高亮
set cin                                                 "c/c++方式缩进
set cino=0g0t0(sus
set nowrap                                              "不自动折行
set expandtab                                           "空格代替tab
set tabstop=4
set shiftwidth=4
set incsearch                                           "逐步搜索
set hlsearch                                            "搜索高亮

set number                                              "显示行号

set nocp                                                "非vi模式
set nocompatible
set backspace=indent,eol,start
filetype on
filetype plugin on
set enc=utf-8
set ruler
set clipboard+=unnamed

"设置光标形状 insert模式下为竖线
if has("autocmd")
    au InsertEnter * silent execute "!gconftool-2 --type string --set /apps/gnome-terminal/profiles/Default/cursor_shape ibeam"
    au InsertLeave * silent execute "!gconftool-2 --type string --set /apps/gnome-terminal/profiles/Default/cursor_shape block"
    au VimLeave * silent execute "!gconftool-2 --type string --set /apps/gnome-terminal/profiles/Default/cursor_shape block"
endif




map <C-F12> :!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR> "use ctags



filetype plugin indent on 
"打开文件类型检测, 加了这句才可以用智能补全
set completeopt=longest,menu


let Tlist_Show_One_File=1 "不同时显示多个文件的tag，只显示当前文件的 
let Tlist_Exit_OnlyWindow=1 "如果taglist窗口是最后一个窗口，则退出vim

"设置MiniBufExplorer
let g:miniBufExplMapWindowNavVim = 1   
let g:miniBufExplMapWindowNavArrows = 1   
let g:miniBufExplMapCTabSwitchBufs = 1   
let g:miniBufExplModSelTarget = 1  
let g:miniBufExplMoreThanOne=0

"设置Winmanager
let g:NERDTree_title="[NERDTree]"  
let g:winManagerWindowLayout="NERDTree|TagList"  
  
function! NERDTree_Start()  
    exec 'NERDTree'  
endfunction  
  
function! NERDTree_IsValid()  
    return 1  
endfunction  
  
nmap wm :WMToggle<CR>


let g:DoxygenToolkit_briefTag_pre = "@brief\t"
let g:DoxygenToolkit_paramTag_pre = "@param\t"
let g:DoxygenToolkit_returnTag = "@return\t"

