"this is for eclipse key mapping
nnoremap <silent> <c-f11> :call eclim#vimplugin#FeedKeys('Ctrl+F11', 1)<cr>
nnoremap <silent> <f11> :call eclim#vimplugin#FeedKeys('F11', 1)<cr>
let g:EclimNailgunClient = 'external'
let g:EclimPythonSearchSingleResult = 'lopen'
noremap <silent> <leader>ps :PythonSearchContext<CR>
noremap <silent> <leader>pt :PyLint<CR>
"add command line back when using Taglist
set guioptions-=L

