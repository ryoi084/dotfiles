let g:deoplete#enable_at_startup = 1
let g:deoplete#enable_ignore_case = 1
let g:auto_complete_delay = 0
inoremap <expr><tab> pumvisible() ? "\<C-n>" :
    \ neosnippet#expandable_or_jumpable() ?
    \ "\<Plug>(neosnippet_expand_or_jump)" : "\<tab>"
