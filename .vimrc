" ensures that vim-plug is installed
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" plugin management (with vim-plug)
call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree'

call plug#end()
