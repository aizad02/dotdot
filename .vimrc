 set nocompatible               " be iMproved
 filetype off                   " required!

 set rtp+=~/.vim/bundle/Vundle.vim
" set rtp+=~/.vim/bundle/vundle/
 "call vundle#begin()
 call vundle#rc()
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

 " took from Shunan some Commented because already have
 "Bundle 'gmarik/vundle'
 "Bundle 'kien/ctrlp.vim'
 "Bundle 'scrooloose/nerdtree'
 "Bundle 'tpope/vim-rails'
 Bundle 'tpope/vim-haml'
 "Bundle 'tpope/vim-surround'
 "Bundle 'tpope/vim-repeat'
 Bundle 'rking/ag.vim'
 Bundle 'nelstrom/vim-visual-star-search'
 "Bundle 'tpope/vim-fugitive'
 Bundle 'airblade/vim-gitgutter'
 Bundle 'bling/vim-airline'

let g:agprg = 'ag --nogroup --nocolor --column'
"runtime macros/matchit.vim
set t_Co=256
"colorscheme babymate256
set ai sw=2 sts=2 et
set number
set rnu
set smartcase
set backspace=indent,eol,start
set hlsearch
" highlight status bar for current active window
"augroup NrHighlight
"	autocmd!
"	autocmd WinEnter * hi StatusLine ctermfg=3
"	autocmd WinLeave * hi StatusLine ctermbg=240 ctermfg=12
"augroup END

highlight ExtraWhitespace ctermbg=darkred guibg=darkred
match ExtraWhitespace /\s\+$/

" vim-airline
let g:airline_left_sep = '»'
let g:airline_right_sep = '«'
let g:airline#extensions#tabline#enabled = 1
"
set guifont=Monaco:h12
"
" End Copying
 
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
 map <left> <ESC>:NERDTreeToggle<CR>
 "<RETURN>
"map <C-n> :NERDTreeToggle<CR>
"map <left> <ESC>:Explore<RETURN>

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
 
