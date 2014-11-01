set number
set cursorline
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
NeoBundle 'Shougo/unite.vim'
NeoBundle 'thinca/vim-quickrun'
NeoBundle 'Shougo/vimproc', {
\'build': {
\  'mac': 'make -f make_mac.mak',
\  },
\}

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

" unite.vim設定
" 入力モードで開始する
let g:unite_enable_start_insert=1
" uniteを開くとき,垂直分割で開く
let g:unite_enable_split_vertically=1
" ファイルを開くとき,ウィンドウを縦に分割して開く
au FileType unite nnoremap <silent> <buffer> <expr> <C-l> unite#do_action('vsplit')
au FileType unite inoremap <silent> <buffer> <expr> <C-l> unite#do_action('vsplit')

nnoremap    [unite]   <Nop>
nmap    <Leader>f [unite]

nnoremap <silent> [unite]f :<C-u>Unite<Space>file<CR>

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

set autoindent
set nostartofline
set listchars=tab:▸\ ,eol:¬
set list
set noerrorbells

let g:hybrid_use_iTerm_colors = 1
colorscheme hybrid

autocmd BufNewFile,BufRead *.rb,*.ru set filetype=ruby
autocmd BufNewFile,BufRead *.php set filetype=php
autocmd BufNewFile,BufRead *.js set filetype=javascript

autocmd FileType ruby setl expandtab tabstop=2 shiftwidth=2 softtabstop=2 autoindent
autocmd FileType php setl tabstop=4 shiftwidth=4 softtabstop=4
autocmd FileType javascript setl tabstop=4 shiftwidth=4 softtabstop=4
