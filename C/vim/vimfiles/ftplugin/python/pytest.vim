"for pytest
" Execute the tests
nnoremap <silent><Leader>tf <Esc>:Pytest file<CR>
nnoremap <silent><Leader>tc <Esc>:Pytest class<CR>
nnoremap <silent><Leader>tm <Esc>:Pytest method<CR>
" cycle through test errors
nnoremap <silent><Leader>tn <Esc>:Pytest next<CR>
nnoremap <silent><Leader>tp <Esc>:Pytest previous<CR>
nnoremap <silent><Leader>te <Esc>:Pytest error<CR>
