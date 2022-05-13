" = =  = =  = =  ===  = = = =
" = =          =  =
" =     X · M     = =  :!
" =   =      =    = =  = = =  =
" =======   ====
"                 =======       |
"   ****       k        =======
"  *    *      +      | ======= |
"       *  h+++++++l  | y -> p  |  =
"      *       +      | i v e   |    =
"      *       +      |         | C-F  =
"      *       +      | C-B     | C-B   =
"              j      | N-G     | w       =
"      "              | dd      | b         =
" =============================================
"
"


" Leader键  <D-.> || <S-.>
let mapleader = ">"


" 通用快捷键 ===========>>>>>>>>>>>>>>
inoremap <C-s> <ESC>:w<CR>
nnoremap <C-s> <ESC>:w<CR>
nnoremap <leader>w :q<CR>
nnoremap <leader>l :call NumberToggle()<CR>
nnoremap <C-j> :belowright vert term<CR><C-w>:vertical resize 40<CR><C-w>:set wfw<CR>
nnoremap <S-Up> :resize -1<CR>
nnoremap <S-Down> :resize +1<CR>
nnoremap <S-Left> :vertical resize -1<CR>
nnoremap <S-Right> :vertical resize +1<CR>
nnoremap <leader>f :Files<CR>
nnoremap <leader>e :Buffers<CR>
nnoremap <leader>b :NERDTreeToggle<CR>
nnoremap <leader>1 :NERDTreeFocus<CR>
nnoremap <leader>a :Ag<CR>
nnoremap <C-b> :Bookmark<CR>
" 通用快捷键 <<<<<<<<<<<<=============


" 编辑器设置 ===========>>>>>>>>>>>>>>

syntax on
set encoding=UTF-8
set guifont=DroidSansMono\ Nerd\ Font:h11
set nocompatible
filetype off
colorscheme gruvbox
" highlight Normal guibg=NONE ctermbg=None

"缩进
set	tabstop=2
set softtabstop=2
set expandtab " 空格代替
set autoindent
set shiftwidth=2 " 自动缩进
" let g:indentLine_enabled = 0
let g:indentLine_leadingSpaceEnabled = 1  " 使用·展示缩进空格
let g:indentLine_leadingSpaceChar = '·'
autocmd BufEnter NERD_tree* :LeadingSpaceDisable  " 缩进问题
autocmd BufEnter NERD_tree* :IndentLinesDisable  " 缩进问题

" 折叠
set fdm=indent
set nofoldenable
set backspace=indent,eol,start " 删的更多

"光标样式
let &t_SI = "\<Esc>]50;CursorShape=1\x7"
let &t_SR = "\<Esc>]50;CursorShape=2\x7"
let &t_EI = "\<Esc>]50;CursorShape=0\x7"

" 行数
set number
set relativenumber

" 始终展示tab
set showtabline=2
" 编辑器设置  <<<<<<<<<<<=============


" NERDTree config ===========>>>>>>>>>>
let g:NERDTreeShowLineNumbers = 1
let g:NERDTreeWinSize=40
let g:NERDTreeGitStatusUseNerdFonts = 1 " you should install nerdfonts by yourself. default: 0
let NERDTreeShowBookmarks=1
" Open the existing NERDTree on each new tab.
" autocmd BufWinEnter * if getcmdwintype() == '' | silent NERDTreeMirror | endif
" NERDTree config <<<<<<<<<<<==========


" theme  ================>>>>>>>>>>>>>>>
let g:gruvbox_transparent_bg=1
" theme  <<<<<<<<<<<<<<<=================


" JSX
let g:vim_jsx_pretty_template_tags=['html','jsx','tsx','vue']
let g:vim_jsx_pretty_highlight_close_tag = 1
let g:vim_jsx_pretty_colorful_config = 1


" make YCM compatible with UltiSnips (using supertab)
let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
let g:SuperTabDefaultCompletionType = '<C-n>'


" Snippets
" better key bindings for UltiSnipsExpandTrigger
let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpForwardTrigger = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"
let g:UltiSnipsSnippetDirectories=['UltiSnips', 'MySnips']
" 插件不认识的文件
autocmd FileType javascriptreact UltiSnipsAddFiletypes javascript_react
autocmd FileType typescriptreact UltiSnipsAddFiletypes typescript_react


" JSON
let g:vim_json_syntax_concea=0  " 展示双引号
let g:indentLine_noConcealCursor=""

" Plugins  =========>>>>>>>>>>>
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')
Plugin 'VundleVim/Vundle.vim'
Plugin 'preservim/nerdtree'
Plugin 'ryanoasis/vim-devicons'
Plugin 'tpope/vim-fugitive'  " Git
Plugin 'Xuyuanp/nerdtree-git-plugin'  " git status
Plugin 'Valloric/YouCompleteMe'
Plugin 'PsychoLlama/further.vim'  " Use [<C-w>]gf to jump file
Plugin 'pangloss/vim-javascript'  " ?
Plugin 'yuezk/vim-js'  " ?
Plugin 'HerringtonDarkholme/yats.vim'  " ?
Plugin 'maxmellon/vim-jsx-pretty'  " ?
Plugin 'tpope/vim-surround'  " 快速包裹，如：{} () 等
Plugin 'gorodinskiy/vim-coloresque'  " 颜色展示
Plugin 'vim-airline/vim-airline'  " 状态栏
Plugin 'vim-airline/vim-airline-themes'  " 状态栏主题
Plugin 'Yggdroot/indentLine'  " 缩进
Plugin 'airblade/vim-gitgutter'  " git 部分改动查看
Plugin 'mhinz/vim-signify'  " Git列变动状态展示
Plugin 'junegunn/gv.vim'  " git history
Plugin 'morhetz/gruvbox'  " 主题
Plugin 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plugin 'junegunn/fzf.vim'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
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
"
" Plugins  <<<<<<<<<<<<==========


" NumberToogle  ==============>>>>>>>>>
function! NumberToggle()
  if(&relativenumber == 1)
    set number
    set norelativenumber
  else
    set nonumber
    set relativenumber
  endif
endfunc
