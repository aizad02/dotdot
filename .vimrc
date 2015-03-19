 set nocompatible               " be iMproved
 filetype off                   " required!

 set rtp+=~/.vim/bundle/Vundle.vim
 call vundle#begin()

 " let Vundle manage Vundle
 " required! 
 Plugin 'gmarik/Vundle.vim'

 " My Bundles here:
 "
 " original repos on github
 Plugin 'vim-scripts/Railscasts-Theme-GUIand256color'
 Plugin 'tpope/vim-fugitive'
 Plugin 'Lokaltog/vim-easymotion'
 "Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
 " My Customs
 Plugin 'tpope/vim-rails'
 Plugin 'vim-ruby/vim-ruby'
 Plugin 'kchmck/vim-coffee-script'
 Plugin 'scrooloose/nerdtree'
 Plugin 'tpope/vim-endwise'
 Plugin 'tpope/vim-surround'
 Plugin 'vim-scripts/EasyGrep'
 Plugin 'scrooloose/syntastic'
 Plugin 'Raimondi/delimitMate'
 Plugin 'kien/ctrlp.vim'

 " vim-scripts repos
 " Bundle 'L9'
 " Bundle 'FuzzyFinder'
 " non github repos
 " Bundle 'git://git.wincent.com/command-t.git'
 " git repos on your local machine (ie. when working on your own plugin)
 " Bundle 'file:///Users/gmarik/path/to/plugin'
 " ...

 filetype plugin indent on     " required!

 set autoindent
 syntax on
 " always show status line
 set laststatus=2
 set statusline=%<%f\ (%{&ft})\ %-4(%m%)%=%-19(%3l,%02c%03V%)
 set statusline=\ "
 set statusline+=%f\ " file name
 set statusline+=[
 set statusline+=%{strlen(&ft)?&ft:'none'} " filetype
 set statusline+=]
 set statusline+=%h%1*%m%r%w%0* " flag
 set statusline+=%= " right align
 set statusline+=%-14.(%l,%c%V%)\ %<%P " offset
 "
 set cursorline
 set encoding=utf-8
 
 "settings VIM Ruby
 imap <S-CR> <CR><CR>end<Esc>-cc

 set showmatch
 let NERDTreeIgnore = ['\.beam', '\.pyc', 'ebin']
 let NERDChristmasTree = 1
 let NERDTreeMinimalUI = 1
"make use of arrow key
 map <left> <ESC>:NERDTree<RETURN>

" remap some CtrlP keys
 let g:ctrlp_map = '<leader>p'
 nnoremap <leader>b :CtrlPBuffer<CR>

 " Regenerate tags
   map <leader>rt :!ctags --extra=+f --languages=-javascript,sql  --exclude=.git  --exclude=log -R *<CR><C-M>"
 " Sane Ignore For ctrlp
    let g:ctrlp_custom_ignore = {
    \ 'dir': '\.git$\|\.hg$\|\.svn$\|\.yardoc\|public\/images\|public\/system\|data\|tmp$',
    \ 'file': '\.exe$\|\.so$\|\.dat$\|\.log$\|\.jpg$\|\.jpeg$\|\.png$\|\.gif$\|\.zip$\|\.tar$\|\.rar$\|\.gz$\|\.class$'
    \ }

 " good for my fingers
   inoremap jj <ESC>
  
 " Remap leader key
   let mapleader = ","
   let g:mapleader = ","
  
 " Save one keystroke
   nnoremap ; :
  
  " Remap backslash to repeat forward find
   nnoremap \ ;
  " Remap pipe to repeat backward find
   nnoremap \| ,
 
 " disable syntastic for some languages
 "  let g:syntastic_mode_map={ 'mode': 'active', 'active_filetypes': [],
 "  'passive_filetypes': ['java'] }
  
 " Brief help
 " :BundleList          - list configured bundles
 " :BundleInstall(!)    - install(update) bundles
 " :BundleSearch(!) foo - search(or refresh cache first) for foo
 " :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
 "
 " see :h vundle for more details or wiki for FAQ
 " NOTE: comments after Bundle command are not allowed..
