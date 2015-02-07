" vi互換モードを利用しない
set nocompatible
filetype off

set backspace=start,eol,indent

if has('vim_starting')
  set runtimepath+=~/.vim/bundle/neobundle.vim
  call neobundle#rc(expand('~/.vim/bundle/'))
endif

NeoBundle 'pangloss/vim-javascript'
NeoBundle 'tpope/vim-endwise'
NeoBundle 'thinca/vim-quickrun'
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'christoomey/vim-tmux-navigator'

" vim-tmux-navigator
let g:tmux_navigator_no_mappings = 1

nnoremap <silent> <c-h> :TmuxNavigateLeft<cr>
nnoremap <silent> <c-j> :TmuxNavigateDown<cr>
nnoremap <silent> <c-k> :TmuxNavigateUp<cr>
nnoremap <silent> <c-l> :TmuxNavigateRight<cr>
nnoremap <silent> <c-\> :TmuxNavigatePrevious<cr>

" vim-quickrun設定
let g:quickrun_config = {
\ "_": {
\   "outputter/buffer/split" : ":botright 8sp",
\   "outputter/buffer/close_on_empty" : 1,
\   "runner": "vimproc",
\   "runner/vimproc/updatetime" : 40,
\   "hook/time/enable": 1
\  }
\}

" filetype plugin indent on
" filetype indent on
syntax on

"お好みのプラグインを定義する
"ruby
" Bundle 'vim-ruby/vim-ruby'
"Bundle 'tpope/vim-rails'
" Bundle 'tpope/vim-cucumber'

" filetype indent plugin on

" タブの設定
" set expandtab
set tabstop=4
" set softtabstop=4
" set shiftwidth=4

set number
set autoindent
set nostartofline
set listchars=tab:▸\ ,eol:¬
set list
set noerrorbells

" ハイライト
set hlsearch
nnoremap<ESC><ESC>:nohlsearch<CR>

let g:hybrid_use_iTerm_colors = 1
colorscheme hybrid

autocmd BufNewFile,BufRead *.rb,*.ru set filetype=ruby
autocmd BufNewFile,BufRead *.php set filetype=php
autocmd BufNewFile,BufRead *.js set filetype=javascript

autocmd FileType ruby setl expandtab tabstop=2 shiftwidth=2 softtabstop=2 autoindent
autocmd FileType php setl tabstop=4 shiftwidth=4 softtabstop=4
autocmd FileType javascript setl tabstop=4 shiftwidth=4 softtabstop=4

" スクロール速度改善
set lazyredraw
