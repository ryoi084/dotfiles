" dein.vim を使うために以下を記述
runtime! plugins/dein.rc.vim

" ====一般設定====
" UTF-8に設定
set fenc=utf-8
" バックアップファイルを作らない
set nobackup
" スワップファイルを作らない
set noswapfile
" 編集中のファイルが変更されたら自動で読みなおす
set autoread
" 編集中のファイル名を表示
set title
" バッファが編集中でもその他のファイルを開けるように
set hidden
" 入力中のコマンドをステータスに表示する
set showcmd
" ノーマルモードでIME解除
inoremap <silent> <C-[> <ESC>:call system('fcitx-remote -c')<CR>
" ファイル形式を判断
" au BufNewFIle,BufRead *.tex setf tex
" au BufNewFile,BufRead *.py setf python

" viewing
" 行番号を表示
set number
" ステータスラインを常に表示
set laststatus=2
" 括弧入力時の対応する括弧を表示
set showmatch
" スマートインデントにする
set smartindent
" 編集行にアンダーライン
set cursorline
highlight CursorLine cterm=NONE ctermbg=100

" 編集列にアンダーライン
set cursorcolumn
highlight CursorColumn cterm=NONE ctermbg=100

" カーソルを画面の中央にする
set scrolloff=30

" 画面分割の方向
set splitbelow
set splitright

" タブ系
" 不可視文字を可視化
set list listchars=tab:\_\_
" Tab文字を半角スペースにする
set tabstop=2

" ClipBoardを使えるように
" set clipboard=unnamed,autoselect
set clipboard+=unnamedplus

" colorscheme
set background=dark
" colorscheme seoul256
" colorscheme tatami
colorscheme kalisi


" pythonでの自動インデント
filetype plugin indent on
syntax on

" terminal emulatorのcommand modeをESCに
tnoremap <silent> <ESC> <C-\><C-n>

" 対応かっこの色を変更
hi MatchParen ctermbg=1

" 検索のときに変更点を表示
set inccommand=split
" texの自動変換を無効に
let g:tex_conceal = ''

