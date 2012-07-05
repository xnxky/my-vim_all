" for syntastic 
let g:syntastic_enable_signs=1 
let g:syntastic_auto_loc_list=0 
let g:syntastic_auto_jump=0
let g:syntastic_check_on_open=0
let g:syntastic_stl_format = '[%E{Err: %fe #%e}%B{, }%W{Warn: %fw #%w}]'
let g:syntastic_quiet_warnings=0 "this is default, so warnings will mess up with error(can not see any difference it makes.)
let g:syntastic_loc_list_height=5
let g:syntastic_mode_map = { "mode": "passive",
            \ "active_filetypes": [],
            \ "passive_filetypes": [] }
noremap <silent> <leader>se  <Esc>:Errors<CR>
noremap <silent> <leader>sc  <Esc>:SyntasticCheck<CR>
noremap <silent> <leader>st  <Esc>:SyntasticToggleMode<CR>
