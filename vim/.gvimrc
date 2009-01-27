"---------------------------------------------------------------------------
" Shougo's .gvimrc
"---------------------------------------------------------------------------
" Fonts:"{{{
"
if has('win32') || has('win64')
    " For Windows.
    
    "set guifont=Terminal:h10:cSHIFTJIS
    set guifont=UmePlus\ Gothic:h12
    "set guifont=NFモトヤシータ゛1等幅:h11
    " Number of pixel lines inserted between characters.
    set linespace=1
elseif has('mac')
    " For Mac.
    set guifont=Osaka－等幅:h14
else
    " For Linux.
    
    "set guifont=UmePlus\ Gothic\ bold\ 12
    " Don't use bold fonts.
    set guifont=UmePlus\ Gothic\ 14
endif
"}}}

"---------------------------------------------------------------------------
" Window:"{{{
"
if has('win32') || has('win64')
    " Width of window.
    set columns=160
    " Height of window.
    set lines=50
else
    " Width of window.
    set columns=150
    " Height of window.
    set lines=50
endif
" Setting of colorscheme.
colorscheme candy
"}}}

"---------------------------------------------------------------------------
" Input Japanese:"{{{
" For Linux
if (has('multi_byte_ime') || has('xim')) && has('GUI_GTK')
endif
"}}}

"---------------------------------------------------------------------------
" Mouse:"{{{
"
" Show popup menu if right click.
set mousemodel=popup

" Don't focus the window when the mouse pointer is moved.
set nomousefocus
" Hide mouse pointer on insert mode.
set mousehide

"}}}

"---------------------------------------------------------------------------
" Menu:"{{{
"

" Hide toolbar and menus.
set guioptions-=T
set guioptions-=m
" Toggle menu open if press <F2>.
noremap <silent> <F2> :<C-u>if &guioptions =~# 'm' <Bar>
            \set guioptions-=m <Bar>
            \else <Bar>
            \set guioptions+=m <Bar>
            \endif <CR>
" Scrollbar is always off.
set guioptions-=rL
" Not guitablabel.
set guioptions-=e
"}}}

"---------------------------------------------------------------------------
" Views:"{{{
"
" Don't highlight search result.
set nohlsearch

" Disable bell.
set vb t_vb=

" Don't flick cursor.
set guicursor=a:blinkon0

"}}}

"---------------------------------------------------------------------------
" Platform depends:"{{{
"
if has('win32') || has('win64') 
    " For Windows
else
    " For Linux

    "set shell=/bin/bash
    " Use zsh.
    set shell=zsh
endif
"}}}

"---------------------------------------------------------------------------
" Others::
"
