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

" Vundle config
" set nocompatible              " required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Add all your plugins here (note older versions of Vundle used Bundle instead of Plugin)
Plugin 'tmhedberg/SimpylFold'
Plugin 'vim-scripts/indentpython.vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" Enable folding (type za, zc, zo to fold and unfold)
set foldmethod=indent
set foldlevel=99
let g:SimpylFold_docstring_preview=1

" To add the proper PEP8 indentation, add the following
au BufNewFile,BufRead *.py
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4 |
    \ set textwidth=79 |
    \ set expandtab |
    \ set autoindent |
    \ set fileformat=unix |

" for full stack development you can have different settings for different
" file types
au BufNewFile,BufRead *.js, *.html, *.css
    \ set tabstop=2 |
    \ set softtabstop=2 |
    \ set shiftwidth=2 |

" We also want to avoid extraneous whitespace. We can have VIM flag that for us so that it’s easy to spot – and then remove.
" define BadWhitespace before using in a match
highlight BadWhitespace ctermbg=red guibg=darkred
au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

" For the most part, you should be using UTF8 when working with Python, especially if you’re working with Python 3
set encoding=utf-8


