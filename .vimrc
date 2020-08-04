"---------------------------
" Start Neobundle Settings.
"---------------------------
" bundleで管理するディレクトリを指定
set runtimepath+=~/.vim/bundle/neobundle.vim/
" Required:
call neobundle#begin(expand('~/.vim/bundle/'))
" neobundle自体をneobundleで管理
NeoBundleFetch 'Shougo/neobundle.vim'

NeoBundle 'Shougo/unite.vim'
NeoBundle 'Shougo/neocomplete.vim'
NeoBundle 'Shougo/neosnippet.vim'
NeoBundle 'Shougo/neosnippet-snippets'
" SuperTab like snippets behavior.
imap  <expr><TAB>
	\ pumvisible() ? "\<C-n>" :
	\ neosnippet#expandable_or_jumpable() ?
	\ "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"
      
smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
	\ "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"
           

NeoBundle 'Shougo/vimfiler'
		let g:vimfiler_as_default_explorer = 1
		let g:vimfiler_safe_mode_by_default = 0
		autocmd FileType vimfiler nmap <buffer> <CR> <Plug>(vimfiler_expand_or_edit)

NeoBundle 'JuliaEditorSupport/julia-vim'

NeoBundle 'lervag/vimtex'
		let g:vimtex_compiler_latexmk_engines = {'_' : '-pdflua'}
		let g:vimtex_view_general_viewer = 'zathura'
		let g:vimtex_quickfix_open_on_warning = 0

NeoBundle 'freeo/vim-kalisi'
call neobundle#end()
" Required:
filetype plugin indent on
"
" 未インストールのプラグインがある場合、インストールするかどうかを尋ねてくれる
NeoBundleCheck
"-------------------------
" End Neobundle Settings.
"-------------------------

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
au BufNewFile,BufRead *.jl setf julia

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
syntax on

" terminal emulatorのcommand modeをESCに
tnoremap <silent> <ESC> <C-\><C-n>

" 対応かっこの色を変更
hi MatchParen ctermbg=1

" texの自動変換を無効に
let g:tex_conceal = ''

