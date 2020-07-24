"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" neoclide/coc.nvim plugin configurations.

" Table of contents:
" => Vim settings
" => Usage keymaps
" => CocList
" => Autocommands
" => Helper functions
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Vim settings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Some servers have issues with backup files.
set nobackup
set nowritebackup

" Bigger messages display.
"TODO consider changing this.
set cmdheight=1

" Faster diagnostic messages (defaults 4000)
set updatetime=50

" don't give |ins-completion-menu| messages.
set shortmess+=c

" Have a signs colum on the left
set signcolumn=yes

" Enable mouse support
set mouse=a

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Global extensions.
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

let g:coc_global_extensions = [
  \ 'coc-explorer',
  \ 'coc-snippets',
  \ 'coc-pairs',
  \ 'coc-tsserver',
  \ 'coc-eslint',
  \ 'coc-prettier',
  \ 'coc-json',
  \ 'coc-go',
  \ ]

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Usage keymaps.
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Use tab to trigger completion and navigate.
inoremap <silent><expr> <TAB> pumvisible() ? "\<C-n>" : <SID>check_back_space() ? "\<TAB>" : coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

" ctrl-space to trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()

" Use <cr> to comfirm completion.
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

" Use `Öd` and `öd` to navigate diagnostics.
nmap <silent> Öd <Plug>(coc-diagnostic-prev)
nmap <silent> öd <Plug>(coc-diagnostic-next)

" Keys for gotos.
" Add any filetype with an lsp to this au.
" autocmd FileType c,cpp,go,py nmap <silent> gd <Plug>(coc-declaration)
" nmap <silent> gt <Plug>(coc-type-definition)
" nmap <silent> gi <Plug>(coc-definition)
" nmap <silent> gr <Plug>(coc-references)
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window (Or :help for vim keywords).
nnoremap <silent> K :call <SID>show_documentation()<CR>
" Close a help floating window.
nmap <silent> <c-[> <esc>:noh<cr><Plug>(coc-float-hide)

" Rename current word.
"TODO it works in a weird way, that until you save all buffer, the new name is
"not recognized. Do that it will keep analytics before saving.
nmap <F2> <Plug>(coc-rename)

nmap <expr> <silent> <C-S-l> <SID>select_current_word()
function! s:select_current_word()
  if !get(g:, 'coc_cursors_activated', 0)
    return "\<Plug>(coc-cursors-word)"
  endif
  return "*\<Plug>(coc-cursors-word):nohlsearch\<CR>"
endfunc

" Format selected region.
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

" Do codeAction for selected region, ex: `<leader>laap` for current paragraph.
"TODO realise how you choose the action.
"TODO look for useful actions, and maybe map them separately.
xmap <leader>la  <Plug>(coc-codeaction-selected)
nmap <leader>la  <Plug>(coc-codeaction-selected)

" Do codeAction of current line.
nmap <leader>lc  <Plug>(coc-codeaction)
" Fix autofix problem of current line.
nmap <leader>lq  <Plug>(coc-fix-current)

" Create mappings for function text object (requires document symbols feature of languageserver).
"TODO this is probably like i} and a} (like di}, da}). CONFIRM this!
"TODO this doesnt work!!!
xmap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap if <Plug>(coc-funcobj-i)
omap af <Plug>(coc-funcobj-a)

" Use <C-d> for select selections ranges, needs server support, like: coc-tsserver, coc-python
" Not supported by ccls.
"TODO understand what this does!
"nmap <silent> <C-d> <Plug>(coc-range-select)
"xmap <silent> <C-d> <Plug>(coc-range-select)

" Use `:Format` to format current buffer.
command! -nargs=0 Format :call CocAction('format')

" Use `:Fold` to fold current buffer.
command! -nargs=? Fold :call CocAction('fold', <f-args>)
command! -nargs=? Unfold :0,$foldopen

" use `:OR` to organize imports of current buffer.
"TODO understand this. you seem to dont have this action. check if ccls has
"it, and generally what the hell is it.
command! -nargs=0 OR :call CocAction('runCommand', 'editor.action.organizeImport')

" Add status line support for integration with other plugins. checkout `:h coc-status`
"set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

" Coc explorer
nmap <space>e :CocCommand explorer<CR>

" Coc lists
" Grep
" grep word under cursor
command! -nargs=+ -complete=custom,s:GrepArgs Rg exe 'CocList grep '.<q-args>

function! s:GrepArgs(...)
  let list = ['-S', '-smartcase', '-i', '-ignorecase', '-w', '-word',
        \ '-e', '-regex', '-u', '-skip-vcs-ignores', '-t', '-extension']
  return join(list, "\n")
endfunction

" Keymapping for grep word under cursor with interactive mode
nnoremap <silent> <Leader>cf :exe 'CocList -I --input='.expand('<cword>').' grep'<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => CocList
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Show all diagnostics.
nnoremap <silent> <leader>fa  :<C-u>CocList diagnostics<cr>
" Manage extensions.
nnoremap <silent> <leader>fe  :<C-u>CocList extensions<cr>
" Show commands.
nnoremap <silent> <leader>fc  :<C-u>CocList commands<cr>
" Find symbol of current document.
nnoremap <silent> <leader>fo  :<C-u>CocList outline<cr>
" Search workspace symbols.
nnoremap <silent> <leader>fs  :<C-u>CocList -I symbols<cr>
" Do default action for next item in the last list.
nnoremap <silent> <leader>fj  :<C-u>CocNext<CR>
" Do default action for previous item in the last list.
nnoremap <silent> <leader>fk  :<C-u>CocPrev<CR>
" Resume latest coc list.
nnoremap <silent> <leader>fp  :<C-u>CocListResume<CR>
" Find files in cwd.
nnoremap <silent> <leader>ff  :<C-u>CocList files<CR>
" List all errors (bugs).
nnoremap <silent> <leader>fb :<C-u>CocList locationlist<CR>
" Find buffers.
"TODO map <c-s> and <c-v> to open with splits.
nnoremap <silent> <leader>bf  :<C-u>CocList buffers<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Autocommands
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Highlight symbol under cursor on CursorHold
autocmd CursorHold * silent call CocActionAsync('highlight')

augroup mygroup
    autocmd!
    " Setup formatexpr specified filetype(s).
    autocmd FileType json setlocal formatexpr=CocAction('formatSelected')
    " Update signature help on jump placeholder.
    "TODO realise exactly what this does.
    autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Helper functions
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
function! s:check_back_space() abort
    let col = col('.') - 1
    return !col || getline('.')[col - 1]  =~# '\s'
endfunction


function! s:show_documentation()
    if (index(['vim','help'], &filetype) >= 0)
        execute 'h '.expand('<cword>')
    else
        call CocAction('doHover')
    endif
endfunction

