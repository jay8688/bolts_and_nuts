" Ref: https://help.ubuntu.com/community/VimHowto
" Also see /etc/vim/vimrc
" Run sudo apt-get to intall vim-gnome and vim-gtk

" Turn on line numbering. Turn it off with "set nonu" 
set number

" Highlight search
set hls

" Wrap text instead of being on one line
set lbr

" Change colorscheme from default to delek
"colorscheme delek

" http://stackoverflow.com/a/21977418/2956795
set wildmenu
set wildmode=longest:list,full

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

" set up ctags following https://www.fusionbox.com/blog/detail/navigating-your-django-project-with-vim-and-ctags/590/
"ctags -R --fields=+l --languages=python --python-kinds=-iv -f ~/tags_tensorflow_py35 $(python -c "import os, sys; print(' '.join('{}'.format(d) for d in sys.path if os.path.isdir(d)))")
set tags=~/tags_tensorflow_py35
map <C-\> :tab split<CR>:exec("tag ".expand("<cword>"))<CR>
map <A-]> :vsp <CR>:exec("tag ".expand("<cword>"))<CR>
