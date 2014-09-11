filetype off
filetype plugin indent off

:set number
:set tabstop=4
:set expandtab
:set shiftwidth=4


let g:acp_enableAtStartup = 0
let g:neocomplcache_enable_at_startup = 1
let g:neocomplcache_enable_smart_case = 1
let g:neocomplcache_min_syntax_length = 3
let g:neocomplcache_lock_buffer_name_pattern = '\*ku\*'

let g:neocomplcache_dictionary_filetype_lists = {
    \ 'default' : '',
    \ 'vimshell' : $HOME.'/.vimshell_hist',
    \ 'scheme' : $HOME.'/.gosh_completions'
        \ }

if !exists('g:neocomplcache_keyword_patterns')
    let g:neocomplcache_keyword_patterns = {}
endif
let g:neocomplcache_keyword_patterns['default'] = '\h\w*'
let g:NERDTreeShowHidden=1

inoremap <expr><C-g>     neocomplcache#undo_completion()
inoremap <expr><C-l>     neocomplcache#complete_common_string()

inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
function! s:my_cr_function()
  return neocomplcache#smart_close_popup() . "\<CR>"
endfunction
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
inoremap <expr><C-h> neocomplcache#smart_close_popup()."\<C-h>"
inoremap <expr><BS> neocomplcache#smart_close_popup()."\<C-h>"
inoremap <expr><C-y>  neocomplcache#close_popup()
inoremap <expr><C-e>  neocomplcache#cancel_popup()
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags

if !exists('g:neocomplcache_omni_patterns')
  let g:neocomplcache_omni_patterns = {}
endif
if !exists('g:neocomplcache_force_omni_patterns')
  let g:neocomplcache_force_omni_patterns = {}
endif
let g:neocomplcache_omni_patterns.php =
\ '[^. \t]->\%(\h\w*\)\?\|\h\w*::\%(\h\w*\)\?'
let g:neocomplcache_omni_patterns.c =
\ '[^.[:digit:] *\t]\%(\.\|->\)\%(\h\w*\)\?'
let g:neocomplcache_omni_patterns.cpp =
\ '[^.[:digit:] *\t]\%(\.\|->\)\%(\h\w*\)\?\|\h\w*::\%(\h\w*\)\?'

let g:neocomplcache_omni_patterns.perl =
\ '[^. \t]->\%(\h\w*\)\?\|\h\w*::\%(\h\w*\)\?'



set runtimepath += "/usr/local/go/misc/vim"
auto BufNewFile,BufRead *.go set ft=go

set nocompatible               " Be iMproved                       
" バックアップをとらない
set nobackup

if has('vim_starting')         
   set runtimepath+=~/.vim/bundle/neobundle.vim/
endif
call neobundle#rc(expand('~/.vim/bundle/'))
" Let NeoBundle manage NeoBundle
NeoBundleFetch 'Shougo/neobundle.vim'
" Recommended to install       
" After install, turn shell ~/.vim/bundle/vimproc, (n,g)make -f your_machines_makefile
NeoBundle 'Shougo/vimproc'     
" My Bundles here:
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'Shougo/neocomplcache'
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'Townk/vim-autoclose'
NeoBundle 'altercation/vim-colors-solarized'
NeoBundle 'joonty/vdebug'
NeoBundle 'tomasr/molokai'
NeoBundle "tpope/vim-rails"
NeoBundle "soh335/vim-symfony"
NeoBundle 'mattn/flappyvird-vim'

filetype plugin indent on     " Required!
" Installation check.
NeoBundleCheck
" autocmd vimenter * NERDTree
"syntax on

set runtimepath+=$GOROOT/misc/vim
filetype plugin indent on
autocmd FileType go autocmd BufWritePre <buffer> Fmt
exe "set runtimepath+=".globpath($GOPATH, "src/github.com/nsf/gocode/vim")
set completeopt=menu,preview
" カーソル行をハイライト
set cursorline
" カレントウィンドウにのみ罫線を引く
augroup cch
 autocmd! cch
 autocmd WinLeave * set nocursorline
 autocmd WinEnter,BufRead * set cursorline
augroup END

"hi clear CursorLine
"hi CursorLine gui=underline

"highlight CursorLine gui=NONE guifg=white guibg=green
"set cursorcolumn

set statusline=%<%f\ %h%m%r%{fugitive#statusline()}%=%-14.(%l,%c%V%)\ %P
:highlight LineNr ctermfg=196

"colorscheme molokai
"if has('gui_running')
"  set background=light
"else
"  set background=dark
"endif
"colorscheme solarized
let g:molokai_original = 1
let g:rehash256 = 1
"set background=dark
syntax on
colorscheme molokai
set notitle
