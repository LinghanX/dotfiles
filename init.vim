set nocompatible 
filetype off

set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'

"syntax checker
Plugin 'syntastic'

"auto complete
Plugin 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plugin 'jiangmiao/auto-pairs'

call vundle#end()
filetype plugin indent on

"personal settings

"set line number;
:set number

"auto indent
:set autoindent
:set shiftwidth=4

"change nvim cursor
:let $NVIM_TUI_ENABLE_CURSOR_SHAPE=1

"syntastic setting
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

"config deoplete
let g:deoplete#enable_at_startup = 1
inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"

