" YouCompleteMe

set completeopt=longest,menu
autocmd InsertLeave * if pumvisible() == 0|pclose|endif
let g:ycm_seed_identifiers_with_syntax=1
let g:ycm_enable_diagnostic_highlighting = 0
nnoremap <leader>gl :YcmCompleter GoToDeclaration<CR>
nnoremap <leader>gf :YcmCompleter GoToDefinition<CR>
nnoremap <leader>gg :YcmCompleter GoToDefinitionElseDeclaration<CR>
