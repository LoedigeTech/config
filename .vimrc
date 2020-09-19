" get the OS
if !exists("g:os")
    if has("win64") || has("win32") || has("win16")
        let g:os = "Windows"
    else
        let g:os = substitute(system('uname'), '\n', '', '')
    endif
endif

" set the plugged folder directory
if g:os != "Linux"
	let $MYPLUGDIRECTORY = "~/vimfiles/plugged"
else
	let $MYPLUGDIRECTORY = "~/.vim/plugged"
endif

"get plugins
call plug#begin($MYPLUGDIRECTORY)

Plug 'scrooloose/nerdtree'

Plug 'luochen1990/rainbow'

Plug 'itchyny/lightline.vim'

Plug 'preservim/nerdcommenter'

Plug 'tpope/vim-fugitive'

call plug#end()


"lightline
let g:lightline = { 'colorscheme': 'solarized'}
set laststatus=2

"NERDTree
autocmd vimenter * NERDTree
