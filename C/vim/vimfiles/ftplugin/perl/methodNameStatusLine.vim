set statusline +=%3*\ \ %{GetPerlMethodName()}%*
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
