" Common
set nocompatible

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
nmap <leader>yfw <Plug>(YCMFindSymbolInWorkspace)
nmap <leader>yfd <Plug>(YCMFindSymbolInDocument)

" CtrlP
let g:ctrlp_by_filename = 1

" Ack
nmap <Leader>ac :Ack<space>-i<space>--ignore-dir=.git<space>--ignore-dir=.cache<space>--type=cc<space>--type=cpp<space>
nmap <Leader>ay :Ack<space>-i<space>--ignore-dir=.git<space>--ignore-dir=.cache<space>--ignore-dir=qa<space>--type=yaml<space>

" polyglot

" onedark
"Use 24-bit (true-color) mode in Vim/Neovim when outside tmux.
"If you're using tmux version 2.2 or later, you can remove the outermost $TMUX check and use tmux's 24-bit color support
"(see < http://sunaku.github.io/tmux-24bit-color.html#usage > for more information.)
if (empty($TMUX))
  if (has("nvim"))
    "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  endif
  "For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
  "Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
  " < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
  if (has("termguicolors"))
    set termguicolors
  endif
endif
syntax on
colorscheme onedark
