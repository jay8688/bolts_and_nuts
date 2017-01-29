" Ref: https://help.ubuntu.com/community/VimHowto
" Also see /etc/vim/vimrc
" Run sudo apt-get to intall vim-gnome and vim-gtk

" Turn on line numbering. Turn it off with "set nonu" 
set number

" Higlhight search
set hls

" Wrap text instead of being on one line
set lbr

" Change colorscheme from default to delek
colorscheme delek

set wildmenu
"set wildmode=longest:full,full

" set cursorline


" With a map leader it's possible to do extra key combinations
" like <leader>w saves the current file
let mapleader = ","
let g:mapleader = ","

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Spell checking
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Pressing ,ss will toggle and untoggle spell checking
map <leader>ss :setlocal spell!<cr>

" Shortcuts using <leader>
map <leader>sn ]s
map <leader>sp [s
map <leader>sa zg
map <leader>s? z=
