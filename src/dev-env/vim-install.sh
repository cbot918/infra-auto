basic(){
  echo >>"
set nu!

syntax enable
syntax on
colorscheme desert
set autowrite
"
}


vundle(){
  git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
  
echo "

\" Vundle manage
set nocompatible
filetype off


\" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

\" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'


\" All of your Plugins must be added before the following line
call vundle#end()
filetype plugin indent on
" >> $HOME/.vimrc

  vim +PluginInstall
  sudo apt install universal-ctags cscope


  echo "cscope -Rbq"

}


ctags(){
  echo "
Plugin 'ludovicchabant/vim-gutentags'
\" 搜尋專案目錄的標示, 碰到這些檔案/目錄名稱就停止向上一級目錄遞迴
let g:gutentags_project_root = ['.root', '.svn', '.git', '.hg', '.project']

\" 設定ctags的參數
let g:gutentags_ctags_extra_args = ['--fields=+niazS', '--extra=+q']
set tags=tags
" >> $HOME/.vimrc

}



tagbar(){
  echo "
Plugin 'majutsushi/tagbar' \" Tag bar\"

\" Tagbar
let g:tagbar_width=25
autocmd BufReadPost *.cpp,*.c,*.h,*.cc,*.cxx, call tagbar#autoopen()
" >> $HOME/.vimrc
}

nerdtree(){
  echo "
Plugin 'scrooloose/nerdtree'

\" NerdTree
\" autocmd StdinReadPre * let s:std_in=1
\" autocmd VimEnter * if argc() == 0 && !exists(\"s:std_in\") | NERDTree | endif
autocmd VimEnter * NERDTree
let NERDTreeWinSize=15
let NERDTreeShowLineNumbers=1
let NERDTreeAutoCenter=1
let NERDTreeShowBookmarks=1
" >> $HOME/.vimrc
}

ale(){
  echo "
Plugin 'w0rp/ale'

\" Ale
let g:ale_sign_column_always = 1
let g:ale_sign_error = ''
let g:ale_sign_warning = 'w'
let g:ale_statusline_format = [' %d', ' %d', ' OK']
let g:ale_echo_msg_format = '[%linter%] %code: %%s'
let g:ale_lint_on_text_changed = 'normal'
let g:ale_lint_on_insert_leave = 1
let g:ale_c_gcc_options = '-Wall =O2 -std=c99'
let g:ale_cpp_gcc_options = '-Wall -O2 -std=c++14'
let g:ale_c_cppcheck_options = ''
let g:ale_cpp_cppcheck_options = ''

" >> $HOME/.vimrc
}

youcompleteme(){
  sudo apt install build-essential cmake python3-dev -y
  echo "
Plugin 'Valloric/YouCompleteMe'
" >> $HOME/.vimrc

  sudo ln /usr/bin/python3 /usr/bin/python
  vim +PluginInstall
  python3 $HOME/.vim/bundle/YouCompleteMe/install.py --clang-completer

  cp $HOME/.vim/bundle/YouCompleteMe/third_party/ycmd/examples/.ycm_extra_conf.py $HOME/.vim

  echo "
\" YouCompleteMe
let g:ycm_server_python_interpreter='/usr/bin/python'
let g:ycm_global_ycm_extra_conf='~/.vim/.ycm_extra_conf.py'
" >> ~/.vimrc

}

pluginstall(){
  vim +PluginInstall
}

log(){
  echo "
vundle    installed
tagbar    installed
nerdtree  installed
ale       installed  
"
}

# vundle
# tagbar
# nerdtree
# ale
youcompleteme

# pluginstall
# log