set nocompatible              " be iMproved, required
filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

"Rust
Plugin 'rust-lang/rust.vim'
Plugin 'w0rp/ale'
Plugin 'Valloric/YouCompleteMe'

"git
Plugin 'tpope/vim-fugitive'

"file manager 
Plugin 'scrooloose/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'jistr/vim-nerdtree-tabs'

Plugin 'tomasr/molokai'
Plugin 'vim-airline/vim-airline' "Status Bar
"Plugin 'godlygeek/tabular'

"markdown surpport
Plugin 'plasticboy/vim-markdown'

"run command
Plugin 'skywind3000/asyncrun.vim'

call vundle#end()            " required
filetype plugin indent on    " required

set hidden
set number
set nocompatible
set encoding=utf-8

let g:ale_sign_column_always = 1
let g:rustfmt_autosave = 1
let g:ycm_rust_src_path = '/home/gsy/.rustup/toolchains/stable-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/src'

syntax enable
colorscheme molokai

autocmd vimenter * NERDTree

map <leader>t :NERDTreeToggle<CR>
let NERDTreeAutoCenter=1
let NERDTreeShowHidden=1
"let NERDTreeShowBookmarks=1
let g:nerdtree_tabs_open_on_console_startup=1
let NERDTreeIgnore=['\.pyc','\~$','\.swp', '\.git$']
let g:NERDTreeIndicatorMapCustom = {
    \ "Modified"  : "✹",
    \ "Staged"    : "✚",
    \ "Untracked" : "✭",
    \ "Renamed"   : "➜",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "✖",
    \ "Dirty"     : "",
    \ "Clean"     : "✔︎",
    \ "Unknown"   : "?"
    \ }
copen
