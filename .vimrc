"NeoBundle �ݒ�B
"�v���O�C����ǉ����鎞��C:\Users\�a ��M\.vim\bundle�Ɏ哱��git clone���Ă�
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


"�s�ԍ���\��
set number
"�Ή�����(),{},[]���n�C���C�g
set showmatch

"�t�H���g��Directwrite�ɂ���
set rop=type:directx

"�E�[�Ő܂�Ԃ�
set wrap

"�J�[�\����\���s�ňړ�����B�����s�ړ���<C-n>,<C-p>
nnoremap j gj
nnoremap k gk
nnoremap <Down> gj
nnoremap <Up>   gk

".swp���Ȃ�
set noswapfile

".~���Ȃ�
set nobackup

".un~���Ȃ�
set noundofile

"txt�t�@�C���̎������s����
"http://chroju89.hatenablog.jp/entry/2013/07/23/220013
autocmd FileType text setlocal textwidth=0 

"windows���L�[�}�b�v��L���ɂ���
source $VIMRUNTIME/mswin.vim

" �^�u��\������Ƃ��̕�
set tabstop=4
" �^�u��}������Ƃ��̕�
set shiftwidth=4

":w�����Ƃ���utf-8�ɂ���
set fileencoding=utf-8
set fileencodings=iso-2022-jp,euc-jp,sjis,utf-8
set fileformats=unix,dos,mac


" TAB�L�[���������ۂɃ^�u�����̑���ɃX�y�[�X������
set autoindent
set expandtab
set tabstop=2
set shiftwidth=2

" js �g���q�ł�jsx�̃n�C���C�g��L���ɂ���
let g:jsx_ext_required = 0

"�S�p�X�y�[�X���n�C���C�g�\��
function! ZenkakuSpace()
  highlight ZenkakuSpace cterm=reverse ctermfg=DarkMagenta gui=reverse guifg=DarkMagenta
endfunction

if has('syntax')
  augroup ZenkakuSpace
    autocmd!
    autocmd ColorScheme       * call ZenkakuSpace()
    autocmd VimEnter,WinEnter * match ZenkakuSpace /�@/
  augroup END
  call ZenkakuSpace()
endif

"vim-indent-guides��vim�N�����ɗL���ɂ���
let g:indent_guides_enable_on_vim_startup = 1

"vim-indent-guides�ŉ����̈�̂�������ύX����
let g:indent_guides_guide_size = 1

"vim-indent-guides�łQ�K�w�ڂ����������
let g:indent_guides_start_level = 2

"<esc> �� jj �ɒ���
inoremap <silent> jj <ESC>

"<esc> �� jj �ɒ���
inoremap <silent> ���� <ESC>

".tex���J�����Ƃ��A�e���v���t�@�C����ǂݍ���
autocmd BufNewFile *.tex 0r C:\Users\�a ��M\.vim\template/tex.txt

"<ctrl> + n �����Ȃ��Ă������⊮
set completeopt=menuone
for k in split("abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ_",'\zs')
  exec "imap " . k . " " . k . "<C-N><C-P>"
endfor
imap <expr> <TAB> pumvisible() ? "\<Down>" : "\<Tab>"

