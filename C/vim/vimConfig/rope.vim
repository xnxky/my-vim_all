"for ropevim
"need to install rope, ropemode, ropevim and put ropvim.vim from ropevim to
"ftpplugin/python, then update the following pathes accordingly.
let PYTHONPATH = 'C:\Python27\Lib\site-packages\rope-0.9.4-py2.7.egg\rope;C:\Python27\Lib\site-packages\ropevim-0.4_rc-py2.7.egg'

"for rope, this is to refactor the name
noremap <leader>rn :RopeRename<CR>
