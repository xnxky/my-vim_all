let s:saved_statusline = &statusline

function! GetPerlMethodName()

    let current = a:firstline

    while current >= 0
        if getline(current) =~? '\v^\s*sub\s+'
            return getline(current)
        endif

        let current -= 1

    endwhile

    return 'global'

endfunction


augroup addStatusLineEntry
    autocmd!
    autocmd BufEnter *.pl set statusline +=%3*\ \ %{GetPerlMethodName()}%*
augroup deleteStatusLineEntry
    autocmd!
    autocmd BufLeave *.pl let &statusline = s:saved_statusline
augroup END
