function! Randnum(digit)
    let l:match_end = matchend(reltimestr(reltime()), '\d\+\.') + 1
    let l:max = 1
    let l:j = 0
    while l:j < a:digit
        let l:max = l:max * 10
        let l:j += 1
    endwhile
    let l:rand = reltimestr(reltime())[l:match_end : ] % l:max
    execute ":normal i" .l:rand 
endfunction
command! -nargs=+ Randnum call Randnum(<f-args>)

