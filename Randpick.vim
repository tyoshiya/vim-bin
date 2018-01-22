function! Randpick(...)
    let l:i = 1
    let list = []
    while exists('a:{l:i}')
        call add(list,a:{l:i})
        let l:i += 1
    endwhile
    let l:len = len(list)
    let l:match_end = matchend(reltimestr(reltime()), '\d\+\.') + 1
    let l:max = l:len
    let l:rand = reltimestr(reltime())[l:match_end : ] % l:max
    execute ":normal i" . list[l:rand]
endfunction
command! -nargs=* Randpick call Randpick(<f-args>)
