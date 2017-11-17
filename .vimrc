"NeoBundle 設定。
"プラグインを追加する時はC:\Users\溝 大貴\.vim\bundleに主導でgit cloneしてね
 if 0 | endif

 if &compatible
   set nocompatible               " Be iMproved
 endif

 " Required:
 set runtimepath^=~/.vim/bundle/neobundle.vim/

 " Required:
 call neobundle#begin(expand('~/.vim/bundle/'))

 " Let NeoBundle manage NeoBundle
 " Required:
 NeoBundleFetch 'Shougo/neobundle.vim'

 " My Bundles here:
 " Refer to |:NeoBundle-examples|.
 " Note: You don't set neobundle setting in .gvimrc!
NeoBundle 'elixir-lang/vim-elixir'
NeoBundle 'pangloss/vim-javascript'
NeoBundle 'mxw/vim-jsx'
 call neobundle#end()

 " Required:
 filetype plugin indent on

 " If there are uninstalled bundles found on startup,
 " this will conveniently prompt you to install them.
 NeoBundleCheck
"_________________________________________________________________________


"行番号を表示
set number
"対応する(),{},[]をハイライト
set showmatch

"フォントをDirectwriteにする
set rop=type:directx

"右端で折り返す
set wrap

"カーソルを表示行で移動する。物理行移動は<C-n>,<C-p>
nnoremap j gj
nnoremap k gk
nnoremap <Down> gj
nnoremap <Up>   gk

".swp作らない
set noswapfile

".~作らない
set nobackup

".un~作らない
set noundofile

"txtファイルの自動改行解除
"http://chroju89.hatenablog.jp/entry/2013/07/23/220013
autocmd FileType text setlocal textwidth=0 

"windows風キーマップを有効にする
source $VIMRUNTIME/mswin.vim

" タブを表示するときの幅
set tabstop=4
" タブを挿入するときの幅
set shiftwidth=4

":wしたときにutf-8にする
set fileencoding=utf-8
set fileencodings=iso-2022-jp,euc-jp,sjis,utf-8
set fileformats=unix,dos,mac


" TABキーを押した際にタブ文字の代わりにスペースを入れる
set autoindent
set expandtab
set tabstop=2
set shiftwidth=2

" js 拡張子でもjsxのハイライトを有効にする
let g:jsx_ext_required = 0

"全角スペースをハイライト表示
function! ZenkakuSpace()
  highlight ZenkakuSpace cterm=reverse ctermfg=DarkMagenta gui=reverse guifg=DarkMagenta
endfunction

if has('syntax')
  augroup ZenkakuSpace
    autocmd!
    autocmd ColorScheme       * call ZenkakuSpace()
    autocmd VimEnter,WinEnter * match ZenkakuSpace /　/
  augroup END
  call ZenkakuSpace()
endif

"vim-indent-guidesをvim起動時に有効にする
let g:indent_guides_enable_on_vim_startup = 1

"vim-indent-guidesで可視化領域のさいずを変更する
let g:indent_guides_guide_size = 1

"vim-indent-guidesで２階層目から可視化する
let g:indent_guides_start_level = 2

"<esc> を jj に直す
inoremap <silent> jj <ESC>

"<esc> を jj に直す
inoremap <silent> ｊｊ <ESC>

".texを開いたとき、テンプレファイルを読み込む
autocmd BufNewFile *.tex 0r C:\Users\溝 大貴\.vim\template/tex.txt

"<ctrl> + n をしなくても自動補完
set completeopt=menuone
for k in split("abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ_",'\zs')
  exec "imap " . k . " " . k . "<C-N><C-P>"
endfor
imap <expr> <TAB> pumvisible() ? "\<Down>" : "\<Tab>"

