set rtp+=~/vim_plugged/vim-plug
call plug#begin()
Plug 'prabirshrestha/async.vim'
Plug 'prabirshrestha/vim-lsp'
call plug#end()

let g:lsp_log_verbose = 1
let g:lsp_log_file = expand('~/vim-lsp.log')
let g:lsp_signs_error = {'text': 'x'}
let g:lsp_signs_warning = {'text': '!'}
let g:lsp_signs_enabled = 1

augroup LspEFM
  au!
  autocmd User lsp_setup call lsp#register_server({
      \ 'name': 'efm-langserver',
      \ 'cmd': {server_info->['efm-langserver', '-c=/path/to/sample-efm-langserver/config.yaml', '-log=/path/to/efm-langserver.log']},
      \ 'whitelist': ['text'],
      \ })
augroup END
