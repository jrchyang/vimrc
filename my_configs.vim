" YouCompleteMe

set completeopt=longest,menu
autocmd InsertLeave * if pumvisible() == 0|pclose|endif
let g:ycm_seed_identifiers_with_syntax = 1
let g:ycm_enable_diagnostic_highlighting = 0
let g:ycm_rust_toolchain_root = /root/.rustup/toolchains/stable-x86_64-unknown-linux-gnu
let g:ycm_rust_src_path = /root/.rustup/toolchains/stable-x86_64-unknown-linux-gnu/lib/rustlib/src
nnoremap <leader>gl :YcmCompleter GoToDeclaration<CR>
nnoremap <leader>gf :YcmCompleter GoToDefinition<CR>
nnoremap <leader>gg :YcmCompleter GoToDefinitionElseDeclaration<CR>
