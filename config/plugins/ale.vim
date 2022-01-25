" See ~/.vim/ftplugin/* for filetype-specific configuration

let g:ale_disable_lsp = 1
let g:ale_fixers = {'*': ['remove_trailing_lines', 'trim_whitespace']}

" Enable completion where available.
" This setting must be set before ALE is loaded.
"
" You should not turn this setting on if you wish to use ALE as a completion
" source for other completion plugins, like Deoplete.
" let g:ale_completion_enabled = 1

set omnifunc=ale#completion#OmniFunc

" Move between errors with Ctrl+j and Ctrl+Shift+j
nmap <silent> <C-J> <Plug>(ale_previous_wrap)
nmap <silent> <C-j> <Plug>(ale_next_wrap)

cnoreabbrev alf ALEFix


