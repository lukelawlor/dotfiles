"Shut Up
set noeb vb t_vb=

"Tab Styling
"set list
"set listchars=tab:>.
"set ts=4
"set sw=4

"Programming
syntax on
set number
set relativenumber
set autoindent
set formatoptions+=r

"Stop Colors from messing up when scrolling
"syn sync fromstart

"Clipboard
set clipboard+=unnamedplus

"Bindings
"Exiting insert mode
"imap jk <Esc>
"imap kj <Esc>
imap jj <Esc>

"Make Shift+W save the file
noremap <S-W> :update<CR>

"Tab control
noremap <S-Q> :tabp<CR>
noremap <S-E> :tabn<CR>
noremap t :tabe 

"Quit
noremap q :q<CR>

"Jumping
noremap <C-h> 40h
noremap <C-j> 40j
noremap <C-k> 40k
noremap <C-l> 40l

"Neovim block cursor in insert mode
set guicursor=a:block

"Colors
set bg=light
hi LineNr ctermfg=Yellow

"Tab colors
set tabpagemax=100
hi TabLine        ctermfg=Blue    ctermbg=None    cterm=bold
hi TabLineSel     ctermfg=Yellow  ctermbg=None    cterm=bold 
hi TabLineFill    ctermfg=None    ctermbg=None    cterm=bold

hi StatusLine	ctermfg=Yellow	ctermbg=None	cterm=bold
hi StatusLineNC ctermfg=Blue    ctermbg=None    cterm=bold
hi CursorLineNr ctermfg=Yellow  ctermbg=None    cterm=bold
hi Pmenu        ctermfg=Yellow  ctermbg=None    cterm=bold
hi Statement    ctermfg=Yellow  ctermbg=None    cterm=bold

"Visual selection
hi Visual ctermfg=White ctermbg=Blue

"Compilation commands

"Groff compilation
noremap <silent> <S-L> :update<CR>:!cg % >/tmp/g.pdf<CR><enter>

"OpenGL test compilation
noremap <M-c> :!cd ..;make<enter>
noremap <M-r> :!cd ..;./the<enter>

"Set cursor shape to snowman on exit (snowman is an st extension)
"Cursor reset method 1: using an escape sequence (fails on tmux for some
"reason)
"autocmd VimLeave * set guicursor= | call chansend(v:stderr, "\x1b[7 q")
"Cursor reset method 2: using nvim's guicursor option (I modded st to replace
"the vertical bar cursor with the snowman)
autocmd VimLeave * set guicursor=a:ver100
