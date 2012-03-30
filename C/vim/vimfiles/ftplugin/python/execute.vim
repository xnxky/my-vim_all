"redirect to another buffer
"in vimrc:
"python extensions
py from vim import buffers, windows, command, current, error
py import vim, sys
py from vimpy import *

command! PyExecBuffer py exec('\n'.join(current.buffer))
noremap <silent> <leader>r :vsp temp<CR>:py redirect(current.window.buffer)<CR><C-W><C-W>
noremap <silent> <leader>e <C-W><C-W>ggdG<C-W><C-W>:PyExecBuffer<CR>
"select lines and press F5 to execute
noremap <f5> :!python<CR>
