" YouCompleteMe

" 关闭自动提示
set completeopt=menu
let g:ycm_add_preview_to_completeopt = 0
" 关闭诊断信息
let g:ycm_show_diagnostics_ui = 0
" 在注释输入中也能补全
let g:ycm_complete_in_comments = 1
" 在字符串输入中也能补全
let g:ycm_complete_in_strings = 1
" 注释和字符串中的文字也会被收入补全
let g:ycm_collect_identifiers_from_comments_and_strings = 0
" 开启 YCM 基于标签引擎
let g:ycm_collect_identifiers_from_tags_files=1
" 从第2个键入字符就开始罗列匹配项
let g:ycm_min_num_of_chars_for_completion=2
" 禁止缓存匹配项,每次都重新生成匹配项
let g:ycm_cache_omnifunc=0
" 语法关键字补全
let g:ycm_seed_identifiers_with_syntax=1

let g:ycm_rust_toolchain_root = "/root/.rustup/toolchains/stable-x86_64-unknown-linux-gnu"
let g:ycm_rust_src_path = "/root/.rustup/toolchains/stable-x86_64-unknown-linux-gnu/lib/rustlib/src"

nnoremap <leader>go :YcmCompleter GoTo<CR>
nnoremap <leader>gf :YcmCompleter GoToDefinitionElseDeclaration<CR>
