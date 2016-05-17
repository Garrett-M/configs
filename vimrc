set nocompatible
set rtp+=~/.vim/bundle/vundle
call vundle#rc()

" Run vim-plugin-install.sh to install "
Bundle 'gmarik/vundle'
Bundle 'pangloss/vim-javascript'
Bundle 'Raimondi/delimitMate'
Bundle 'scrooloose/nerdtree'
Bundle 'jistr/vim-nerdtree-tabs'
Bundle 'mkitt/tabline.vim'
Bundle 'wting/rust.vim'
Bundle 'Shougo/neocomplcache'
Bundle 'tomasr/molokai'
Bundle 'christoomey/vim-tmux-navigator'

" Tabs and trees "
map <C-f> :NERDTreeTabsToggle<CR> 
set statusline=\[%N\]\ %t\ %M 
set showtabline=2

" Firefox-like tab creation "
nnoremap <C-t> :tabnew<CR>
inoremap <C-t> <Esc>:tabnew<CR>

" Best tab navigation I could find
" nnoremap <S-C-i> :tabprevious<CR>
nnoremap <C-i> :tabnext<CR>

inoremap [<CR> [<CR>]<C-o>O<tab>
inoremap {<CR> {<CR>}<C-o>O<tab>
nnoremap ;<CR> A;<CR>
nnoremap ;; m`A;<Esc>``

set textwidth=80
set colorcolumn=+1

set term=screen-256color
filetype on
syntax on
colorscheme molokai

set formatoptions+=r 
set backspace=2
set number
set relativenumber
set nowrap
set nobackup
set nowritebackup
set noswapfile
set expandtab
set tabstop=2
set shiftwidth=2
set autoindent
set smarttab

let g:molokai_original = 1

let g:neocomplcache_enable_at_startup = 1
let g:neocomplcache_enable_smart_case = 1
let g:neocomplcache_min_syntax_length = 2
let g:neocomplcache_enable_underbar_completion = 1

" <CR>: close popup and save indent.
" inoremap <expr><CR> pumvisible() ? "\<C-n> <BS>" : "\<CR>"
inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
function! s:my_cr_function()
    return neocomplcache#smart_close_popup() . "\<CR>"
endfunction

" <TAB>: completion.
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"

