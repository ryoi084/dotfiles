" dein設定
" プラグインが実際にインストールされるディレクトリ
let s:dein_dir = expand('~/.cache/dein')
" dein.vim 本体
let s:dein_repo_dir = s:dein_dir . '/repos/github.com/Shougo/dein.vim'

" dein.vim がなければ github から落としてくる
if &runtimepath !~# '/dein.vim'
		if !isdirectory(s:dein_repo_dir)
				execute '!git clone https://github.com/Shougo/dein.vim' s:dein_repo_dir
		endif
		execute 'set runtimepath^=' . fnamemodify(s:dein_repo_dir, ':p')
endif

if dein#load_state(s:dein_dir)
		call dein#begin(expand('~/.cache/dein'))

		let g:rc_dir	= expand("~/dotfiles/nvim/")
		let s:toml		= g:rc_dir . '/dein.toml'
		let s:lazy_toml = g:rc_dir . '/dein_lazy.toml'

		call dein#load_toml(s:toml,		{'lazy': 0})
		call dein#load_toml(s:lazy_toml,{'lazy': 1})

		call dein#end()
		call dein#save_state()
endif

" もし、未インストールものものがあったらインストール
if dein#check_install()
		call dein#install()
endif



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
au BufNewFIle,BufRead *.tex setf tex
au BufNewFile,BufRead *.py setf python

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
highlight CursorLine cterm=NONE ctermbg=0

" 300集列を強調
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
" 現在の行を強調表示(縦)
set cursorcolumn

" ClipBoardを使えるように
" set clipboard=unnamed,autoselect



" 透明化
highlight Normal ctermbg=none
highlight LineNr ctermbg=none

" colorscheme
set background=dark
colorscheme seoul256

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

