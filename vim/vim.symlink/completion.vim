" Completion {{{
" :set wildmenu enables a menu at the bottom of the vim/gvim window.
set wildmenu
" list:longest    - When > 1 match, list all matches and
"                   complete till longest common string.
" full            - enables you to tab through the remaining completions
set wildmode=list:longest,full
set wildignore+=*.pyc,*.zip,*.gz,*.bz,*.tar,*.jpg,*.png,*.gif,*.avi,*.wmv,*.ogg,*.mp3,*.mov
" completeopt values (default: "menu,preview")
" menu:    use popup menu to show possible completion
" menuone: Use the popup menu also when there is only one match.
"          Useful when there is additional information about the match,
"          e.g., what file it comes from.
" longest: only tab-completes up to the common elements, if any: " allows
"          you to hit tab, type to reduce options, hit tab to complete.
" preview: Show extra information about the currently selected completion in
"          the preview window. Only works in combination with "menu" or
"          "menuone".
set completeopt=menu,menuone,longest,preview
" end completion }}}

" map tab to autocomplete
imap <Tab> <C-P>
set complete=.,w,b,t,u

" omnicomplete with C-space
imap <c-space> <c-x><c-o>

" line complete with C-M-space
imap <c-S-space> <c-x><c-l>
