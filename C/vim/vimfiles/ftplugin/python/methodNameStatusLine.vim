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

function! GetIndent() range
    return indent(a:firstline)
endfunction

function! ModifyStatusline()
    set statusline +=%3*\ \ %{GetIndent()}%* 
    set statusline +=%3*\ \ %{GetPythonMethodName()}%*
endfunction
augroup addStatusLineEntry
    autocmd!
    autocmd BufEnter *.py :call ModifyStatusline()
augroup deleteStatusLineEntry
    autocmd!
    autocmd BufLeave *.py let &statusline = s:saved_statusline
augroup END
