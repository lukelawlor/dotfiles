"Shut Up
set noeb vb t_vb=
"set list
"set listchars=tab:..

"Programming
syntax on
set number
set relativenumber
set autoindent
set formatoptions+=r

"Stop Colors from messing up when scrolling
syn sync fromstart

"Clipboard
set clipboard=unnamed

"Bindings
"Make j+k map to ESC (exit insert mode)
"imap jk <Esc>
"imap kj <Esc>
imap jj <Esc>
"Make Shift+W save the file
noremap <S-W> :update<CR>

noremap <S-Q> :tabp<CR>
noremap <S-E> :tabn<CR>
noremap t :tabe 
noremap q :q<CR>

"Colors
"colorscheme default
hi LineNr ctermfg=grey

"Tab customization
set tabpagemax=100
hi TabLine        ctermfg=Blue    ctermbg=None    cterm=bold
hi TabLineSel     ctermfg=Yellow  ctermbg=None    cterm=bold 
hi TabLineFill    ctermfg=None    ctermbg=None    cterm=bold

"Groff compilation
noremap <silent> <S-L> :update<CR>:!cg % >/tmp/g.pdf<CR><enter>

"Neovim block cursor in insert mode
set guicursor=i:block
