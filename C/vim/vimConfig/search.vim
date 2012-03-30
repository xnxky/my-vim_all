"search the word under the cursor
command! GREP :execute 'vimgrep /'.expand('<cword>').'/gj '.expand('%') | copen
