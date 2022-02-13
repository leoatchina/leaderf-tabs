function! leaderf#tabs#source(args) abort
    if has('nvim')
        let tab_lst = split(execute('tabs'), '\n')
    else
        redir => reg
        silent tabs
        redir END
        let tab_lst = split(reg, '\n')
    endif
	let index = 0
    let lines = []
	while index < len(tab_lst)
	   let num   = matchstr(tab_lst[index], '\s\zs\d\{1,\}\ze')
       let line  = num . "\t" . tab_lst[index + 1][1:]
       let index = index + 2
       call add(lines, line)
	endwhile
    return lines
endfunction

function! leaderf#tabs#select(line, args) abort
    let num = split(a:line, "\t")[0]
    call feedkeys(num . 'gt')
endfunction
