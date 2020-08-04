" プラグインの設定ファイルPath
let s:plugin = '~/.config/nvim/plugins/config/dein.toml'
let s:plugin_lazy = '~/.config/nvim/plugins/config/dein_lazy.toml'

set runtimepath+=~/.cache/dein/repos/github.com/Shougo/dein.vim

" dein.vim がなければ github から落としてくる
if &runtimepath !~# '/dein.vim'
		if !isdirectory('~/.cache/dein')
				execute '!git clone https://github.com/Shougo/dein.vim' '~/.cache/dein/repos/github.com/Shougo/dein.vim'
		endif
		execute 'set runtimepath^=' . fnamemodify(s:'~/.cache/dein/repos/github.com/Shougo/dein.vim', ':p')
endif

if dein#load_state('~/.cache/dein')
  call dein#begin('~/.cache/dein')
  " dein.tomlを起動時ロードの設定ファイルとして読み込む
  call dein#load_toml(s:plugin, {'lazy': 0})
  call dein#load_toml(s:plugin_lazy,{'lazy': 1})
  call dein#end()
  call dein#save_state()
endif

if &compatible
  set nocompatible
endif

" もし、未インストールものものがあったらインストール
if dein#check_install()
		call dein#install()
endif

filetype plugin indent on
syntax enable
