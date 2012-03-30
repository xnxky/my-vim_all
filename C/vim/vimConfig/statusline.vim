"statusline, now only the option for fugutive is included.
set statusline=
set statusline +=%1*\ %n\ %*            "buffer number
set statusline +=%5*%{&ff}\ %*            "file format
set statusline +=%3*%y%*                "file type
set statusline +=%4*\ %<%F%*            "full path
set statusline +=%2*%m%*                "modified flag
set statusline +=%1*%3l%*             "current line
set statusline +=%2*/%L%*               "total lines
set statusline +=%1*%4v\ %*             "virtual column number
set statusline +=%2*0x%04B\ %*          "character under cursor
set statusline+=%6*%=%{fugitive#statusline()}%*
set statusline+=%7*%#warningmsg#%*
set statusline+=%7*%{SyntasticStatuslineFlag()}%* 
" colors for status line
hi User1 guifg=#eea040 guibg=#222222
hi User2 guifg=#dd3333 guibg=#222222
hi User3 guifg=#ff66ff guibg=#222222
hi User4 guifg=#a0ee40 guibg=#222222
hi User5 guifg=#eeee40 guibg=#222222
hi User6 guifg=#0000ff guibg=#222222
hi User7 guifg=#ff0000 guibg=#222222

