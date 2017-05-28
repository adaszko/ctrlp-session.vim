if !exists('g:loaded_ctrlp') || g:loaded_ctrlp == 0
  finish
endif

let s:save_cpo = &cpo
set cpo&vim

function! s:error(msg)
  echohl ErrorMsg
  echo 'ctrlp-session:' a:msg
  echohl None
endfunction


if !exists('g:ctrlp_sessions')
    command! CtrlPSession call s:error("Please specify your Session.vim file paths in g:ctrlp_sessions variable")
else
    command! CtrlPSession call ctrlp#init(ctrlp#session#id())
endif

let &cpo = s:save_cpo
unlet s:save_cpo
