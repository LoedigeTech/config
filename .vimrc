if !exists("g:os")
    if has("win64") || has("win32") || has("win16")
        let g:os = "Windows"
    else
        let g:os = substitute(system('uname'), '\n', '', '')
    endif
endif

if g:os != "Linux"
	let $MYPLUGDIRECTORY = "~/vimfiles/plugged"
else
	let $MYPLUGDIRECTORY = "~/.vim/plugged"
endif
call plug#begin($MYPLUGDIRECTORY)

Plug 'scrooloose/nerdtree'

call plug#end()
