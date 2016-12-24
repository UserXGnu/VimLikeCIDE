" .vimrc
"See: http://vimdoc.sourceforge.net/htmldoc/options.html for details

" For multi-byte character support (CJK support, for example):
"set fileencodings=ucs-bom,utf-8,cp936,big5,euc-jp,euc-kr,gb18030,latin1

set encoding=UTF-8

set nocompatible               " be iMproved

filetype off                   " required!

set rtp+=~/.vim/bundle/vundle/

" vundle {{{1
"
" " needed to run vundle (but i want this anyways)
"
" " vundle needs filtype plugins off
" " i turn it on later
 filetype plugin indent off
 syntax off
"
" " set the runtime path for vundle
 set rtp+=~/.vim/bundle/Vundle.vim
"
" " start vundle environment
 call vundle#begin()
"
" " list of plugins {{{2
" " let Vundle manage Vundle (this is required)
" "old: Plugin 'gmarik/Vundle.vim'
Plugin 'VundleVim/Vundle.vim'
Plugin 'jamessan/vim-gnupg'
Plugin 'sudo.vim'
Plugin 'powerline/powerline'
Plugin 'suan/vim-instant-markdown'
"Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
"Plugin 'OmniCppComplete'
Plugin 'AutoComplPop'
Plugin 'tpope/vim-git'
Plugin 'airblade/vim-gitgutter'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'tpope/vim-rails'
Plugin 'majutsushi/tagbar'
Plugin 'scrooloose/nerdcommenter'
Plugin 'bling/vim-airline'
Plugin 'scrooloose/nerdtree'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'octol/vim-cpp-enhanced-highlight'
Plugin 'evidens/vim-twig'
Plugin 'flazz/vim-colorschemes'
Plugin 'ap/vim-buftabline'
Plugin 'ervandew/supertab'
Plugin 'myint/clang-complete'
Plugin 'scrooloose/syntastic'
Plugin 'a.vim'
"
" " to install a plugin add it here and run :PluginInstall.
" " to update the plugins run :PluginInstall! or :PluginUpdate
" " to delete a plugin remove it here and run :PluginClean
" " 
"
" 
" Plugin 'bling/vim-airline'
"
" " add plugins before this
call vundle#end()
" vim-plug


filetype plugin on
filetype indent on



set tabstop=4       " Number of spaces that a <Tab> in the file counts for.

set softtabstop=0 

set noexpandtab

set shiftwidth=4    " Number of spaces to use for each step of (auto)indent.
 
"set expandtab       " Use the appropriate number of spaces to insert a <Tab>.
                    " Spaces are used in indents with the '>' and '<' commands
                    " and when 'autoindent' is on. To insert a real tab when
                    " 'expandtab' is on, use CTRL-V <Tab>.
 
set smarttab        " When on, a <Tab> in front of a line inserts blanks
                    " according to 'shiftwidth'. 'tabstop' is used in other
                    " places. A <BS> will delete a 'shiftwidth' worth of space
                    " at the start of the line.
 
set showcmd         " Show (partial) command in status line.

set number          " Show line numbers.

set showmatch       " When a bracket is inserted, briefly jump to the matching
                    " one. The jump is only done if the match can be seen on the
                    " screen. The time to show the match can be set with
                    " 'matchtime'.
 
set hlsearch        " When there is a previous search pattern, highlight all
                    " its matches.
 
set incsearch       " While typing a search command, show immediately where the
                    " so far typed pattern matches.
 
set ignorecase      " Ignore case in search patterns.
 
set smartcase       " Override the 'ignorecase' option if the search pattern
                    " contains upper case characters.
 
set backspace=2     " Influences the working of <BS>, <Del>, CTRL-W
                    " and CTRL-U in Insert mode. This is a list of items,
                    " separated by commas. Each item allows a way to backspace
                    " over something.
 
set autoindent      " Copy indent from current line when starting a new line
                    " (typing <CR> in Insert mode or when using the "o" or "O"
                    " command).
 
"set textwidth=79    " Maximum width of text that is being inserted. A longer
                    " line will be broken after white space to get this width.
 
set formatoptions=c,q,r,t " This is a sequence of letters which describes how
                    " automatic formatting is to be done.
                    "
                    " letter    meaning when present in 'formatoptions'
                    " ------    ---------------------------------------
                    " c         Auto-wrap comments using textwidth, inserting
                    "           the current comment leader automatically.
                    " q         Allow formatting of comments with "gq".
                    " r         Automatically insert the current comment leader
                    "           after hitting <Enter> in Insert mode. 
                    " t         Auto-wrap text using textwidth (does not apply
                    "           to comments)
 
set ruler           " Show the line and column number of the cursor position,
                    " separated by a comma.
 
set background=dark " When set to "dark", Vim will try to use colors that look
                    " good on a dark background. When set to "light", Vim will
                    " try to use colors that look good on a light background.
                    " Any other value is illegal.
 
set mouse=a         " Enable the use of the mouse.
 
set nowrap

syntax on
filetype plugin indent on

set clipboard=unnamedplus

set wmh=0



" NERDTree
map <c-n> :NERDTreeToggle<CR>
let g:nerdtree_tabs_autoclose = 1
" ctrlp
autocmd VimEnter * silent! unmap <c-p>|map <c-p> :CtrlPMixed<CR>

" vim-twig
au BufReadPost *.swig set syntax=twig
au BufReadPost *.tpl set syntax=twig

" Useful for developing color themes
map <F10> :echo "hi<" . synIDattr(synID(line("."),col("."),1),"name") . '> trans<'
	\ . synIDattr(synID(line("."),col("."),0),"name") . "> lo<"
	\ . synIDattr(synIDtrans(synID(line("."),col("."),1)),"name") . ">"<CR>

""let g:airline_powerline_fonts = 1
""set guifont=DejaVu\ Sans:120

hi Normal ctermbg=none
hi LineNr ctermbg=none   ctermfg=110

set tags+=~/.vim/tags/gtk.tags
set tags+=~/.vim/tags/glibobject.tags
set tags+=~/.vim/tags/gdkpixbuf.tags
set tags+=~/.vim/tags/stdio.tags
set tags+=~/.vim/tags/stdlib.tags
set tags+=~/.vim/tags/string.tags
set tags+=~/.vim/tags/unistd.tags
set tags+=~/.vim/tags/inet.tags
set tags+=~/.vim/tags/in.tags
set tags+=~/.vim/tags/netdb.tags
set tags+=~/.vim/tags/socket.tags
set tags+=~/.vim/tags/select.tags
set tags+=~/.vim/tags/fcntl.tags
set tags+=~/.vim/tags/times.tags
set tags+=~/.vim/tags/ioctl.tags

set t_Co=256

"set t_AB=^[[48;5;%dm
"set t_AF=^[[38;5;%dm

" build tags of your own project with Ctrl-F12
map <C-F12> :!ctags -R -I --sort=yes --languages=C,C++ --c++-kinds=+p --fields=+iaS --extra=+q -f local.tags .<CR>
map <C-F11> :!ctags -R -I --append=true --sort=yes --c-kinds=+p --fields=+iaS --extra=+q local.tags /usr/include/gtk-3.0/
"map <C-F10> :!ctags -R -I --append=true --sort=yes --c-kinds=+p --fields=+iaS --extra=+q /usr/include/
map td :ConqueTermSplit zsh <CR>
map ts :ConqueTermVSplit zsh <CR>
map <C-r> :resize +5 <CR>
map <C-e> :resize -5 <CR>
map <C-v> :vertical resize -5 <CR>
map <C-f> :vertical resize +5 <CR>

nmap <silent> <A-Up> :wincmd k<CR>
nmap <silent> <A-Down> :wincmd j<CR>
nmap <silent> <A-Left> :wincmd h<CR>
nmap <silent> <A-Right> :wincmd l<CR>

nmap <C-m> :TagbarOpenAutoClose<CR>

"map <C-J> <C-W>j<C-W>_
"map <C-K> <C-W>k<C-W>_
"map <C-Right> :tabnext<CR>
"map <C-Left> :tabprev<CR>
map <C-Right> :bn<CR>
map <C-Left> :bp<CR>

map <C-a> :%y<CR>

map bd :bd<CR>

set nocp
" OmniCppComplete
"let OmniCpp_NamespaceSearch = 1
"let OmniCpp_GlobalScopeSearch = 1
"let OmniCpp_ShowAccess = 1
"let OmniCpp_ShowPrototypeInAbbr = 1 " show function parameters
"let OmniCpp_MayCompleteDot = 1 " autocomplete after .
"let OmniCpp_MayCompleteArrow = 1 " autocomplete after ->
"let OmniCpp_MayCompleteScope = 1 " autocomplete after ::
"let OmniCpp_DefaultNamespaces = ["std", "_GLIBCXX_STD"]
" automatically open and close the popup menu / preview window
"au CursorMovedI,InsertLeave * if pumvisible() == 0|silent! pclose|endif
"set completeopt=menuone,menu,longest,preview
"set backspace=indent,eol,start
"au BufNewFile,BufRead,BufEnter *.cpp,*.hpp set omnifunc=omni#cpp#complete#Main

"autocmd FileType python set omnifunc=pythoncomplete#Complete
"autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
"autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
"autocmd FileType css set omnifunc=csscomplete#CompleteCSS
"autocmd FileType xml set omnifunc=xmlcomplete#CompleteTags
"autocmd FileType php set omnifunc=phpcomplete#CompletePHP
"autocmd FileType cpp set omnifunc=omni#cpp#complete#Main
"autocmd FileType c set omnifunc=omni#cpp#complete#Complete#Main
"au BufNewFile,BufRead,BufEnter *.cpp,*.hpp set omnifunc=omni#cpp#complete#Main
"autocmd FileType cpp set omnifunc=cppcomplete#CompleteCPP

"colorscheme matrix

set noeb vb t_vb=

"hi clear
"hi comment      guifg=cyan      guibg=#000000
"hi constant     guifg=#6ea96d   guibg=#000000
"hi constant     ctermfg=25
"hi special      guifg=#aaaaaa   guibg=#000000
"hi String       guifg=red       guibg=#000000   gui=bold
"hi String       ctermfg=32
"hi type         guifg=#9ef29c   guibg=#000000   gui=bold
"hi type         ctermfg=32
"hi Statement    guifg=blue     guibg=#000000
"hi PreProc      guifg=blue      guibg=#000000


"hi LineNr         ctermfg=120
hi LineNr         ctermfg=32
hi TabLine        ctermfg=32 ctermbg=16


let g:SuperTabDefaultCompletionType = "<C-N><C-P>"
let g:SuperTabDefaultCompletionType = "context"

"let my_terminal = conque_term#open('/bin/bash')
"let my_terminal = conque_term#open('/bin/bash', ['split', 'resize 10'], 2)
let g:ConqueTerm_InsertOnEnter = 1
let g:ConqueTerm_StartMessages = 0
let g:ConqueTerm_CWInsert = 1
let g:ConqueTerm_TERM = 'vt100'
let g:ConqueTerm_ReadUnfocused = 1
let g:ConqueTerm_Color = 1
let g:ConqueTerm_CloseOnEnd = 1

let g:airline_section_b = '%{strftime("%c")}'
let g:airline_section_y = 'BN: %{bufnr("%")}'
let g:airline#extensions#tabline#enabed = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline_powerline_fonts = 1

set laststatus=2

"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

"colorscheme colorsbox-stbright

" Text editing
set backspace=indent,eol,start
set cino=:0 " No indent for case:/default:
set shiftwidth=4
set tabstop=4

" Interface
set guifont=DejaVu_Sans_Mono:h12
set hidden
set hlsearch
set nowrap
set ruler
set wildmenu
set wildmode=longest:full,full

" Color scheme
"set background=dark
syntax enable
"colorscheme sunburst
colorscheme jellybeans

if has('gui_macvim')
	set transparency=10
endif

" Commands that shell out tend to assume a bourne shell
set shell=sh
"

func! Backspace()
  if col('.') == 1
	if line('.') != 1
	  return "\<ESC>kA\<Del>"
	else
	  return ""
	endif
  else
	return "\<Left>\<Del>"
  endif
endfunc

inoremap <BS> <c-r>=Backspace()<CR>

