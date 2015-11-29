let s:path = fnamemodify(expand('<sfile>:p:h'), ':h')

function! vcprompt#format(format)
  let djl = s:path.'/djl/vcprompt'
  let cmd = 'python '.djl.' -f '.a:format
  return substitute(system(cmd), "\n$", '', '')
endfunction
