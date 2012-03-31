let s:saved_statusline = &statusline


function! GetPythonMethodName() range

    let current = a:firstline
    let firstlineIndent = indent(current)
    let isFirstlineEmpty = getline(current) !~? '\v\S'

    while current >= 0
        if (getline(current) =~? '\v^\s*def\s+' || getline(current) =~? '\v^\s*class\s+') &&
                    \  (indent(current) <= firstlineIndent || isFirstlineEmpty)
            
            return getline(current)

        elseif indent(current) == 0 && getline(current) =~? '\v__name__\s*\=\=\s*''__main__'''
            return 'global'
        endif

        let current -= 1

    endwhile

    return 'global'

endfunction

augroup addStatusLineEntry
    autocmd!
    autocmd BufEnter *.py set statusline +=%3*\ \ %{GetPythonMethodName()}%*
augroup deleteStatusLineEntry
    autocmd!
    autocmd BufLeave *.py let &statusline = s:saved_statusline
augroup END
