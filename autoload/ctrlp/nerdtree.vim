if exists('g:loaded_ctrlp_nerdtree') && g:loaded_ctrlp_nerdtree
  finish
endif
let g:loaded_ctrlp_nerdtree = 1

let s:nerdtree_var = {
\  'init':   'ctrlp#nerdtree#init()',
\  'exit':   'ctrlp#nerdtree#exit()',
\  'accept': 'ctrlp#nerdtree#accept',
\  'lname':  'nerdtree',
\  'sname':  'nerdtree',
\  'type':   'path',
\  'sort':   0,
\}

if exists('g:ctrlp_ext_vars') && !empty(g:ctrlp_ext_vars)
  let g:ctrlp_ext_vars = add(g:ctrlp_ext_vars, s:nerdtree_var)
else
  let g:ctrlp_ext_vars = [s:nerdtree_var]
endif

function! ctrlp#nerdtree#init()
    if exists('g:ctrlp_nerdtree_show_hidden') && g:ctrlp_nerdtree_show_hidden == 1
        let cmd = "find -type d"
    else
        let cmd = "find -type d \\( -path '*/.*' -prune -o -print \\) | sed -e s@./@@"
    endif
    let paths = reverse(split(system(cmd),"\n"))
    return paths
endfunction

function! ctrlp#nerdtree#accept(mode, str)
  call ctrlp#exit()
  exec "NERDTree " . a:str
  echo a:str
endfunction

function! ctrlp#nerdtree#exit()
endfunction

let s:id = g:ctrlp_builtins + len(g:ctrlp_ext_vars)
function! ctrlp#nerdtree#id()
  return s:id
endfunction
