set hls
syntax on 
set shiftwidth=4
set exrc
set tabstop=4
set autoindent
set smartindent
set noswapfile
set noexpandtab
set encoding=utf-8
set fileencodings=ucs-bom,utf-8,gbk,gb2312,latin1 
autocmd FileType c,h setlocal expandtab

command! -nargs=* Grep call fzf#vim#grep('grep -r --include="*.c" --include="*.h" --color-always -n <args> .',1,fzf#vim#with_preview(),<bang>0)
command!-nargs=0 GrepWord call fzf#vim#grep('grep -r --include="*.c" --include="*.h" --color=always -n '.expand('<cwond>'). ' .', 1, fzf#vim#with_preview(), <bang>0)

nnoremap <C-s> :GrepWord<CR>
