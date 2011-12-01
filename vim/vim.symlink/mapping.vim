" " " is the <Leader> character
let mapleader=" "

" Change the current working directory to the directory that the current file you are editing is in.
map <Leader>cd :cd %:p:h <CR>
" Opens a file with the current working directory already filled in so you have to specify only the filename.
map <Leader>e :e <C-R>=expand("%:p:h") . "/" <CR>
" Remove trailing whitespace before saving
map <Leader>w :%s/\s\+$//e<CR>
map <Leader>n :NERDTreeToggle<CR>

" ---------------------------------------------------------------------------
"  " Configure our tab behavior
"  "
"  ---------------------------------------------------------------------------

" map <C-w> :tabclose<CR>
nnoremap <silent> <C-n> :tabnext<CR>
nnoremap <silent> <C-p> :tabprevious<CR>
nnoremap <silent> <C-t> :tabnew<CR>

" Window navigation
nmap <C-J> <C-W><C-J>
nmap <C-K> <C-W><C-K>
nmap <C-L> <C-W><C-L>
nmap <C-H> <C-W><C-H>
nmap tt <C-W>
" Rotate the windows when in position x |x|_|
"                                       | | |
nmap <S-R> <C-w>K<C-W>r<C-W>k<C-W>H

" Mappings
map :Nohl :nohlsearch
" no ex mode
map Q q
inoremap kj <Esc>
inoremap jk <Esc>
" Use apostrophe for backquote function, since backquote is so much more
" useful than apostrophe
nnoremap ` '

" toggle spell check
:map <F5> :setlocal spell! spelllang=en_us<CR>
:imap <F5> <C-o>:setlocal spell! spelllang=en_us<CR>

" Opens an edit command with the path of the currently edited file filled in
map <Leader>e :e <C-R>=expand("%:p:h") . "/" <CR>
map <Leader>s :split <C-R>=expand("%:p:h") . "/" <CR>
map <Leader>v :vsplit <C-R>=expand("%:p:h") . "/" <CR>

" http://stackoverflow.com/questions/762515/vim-remap-key-to-toggle-line-numbering
" source: http://stackoverflow.com/questions/4387210/vim-how-to-map-two-tasks-under-one-shortcut-key
" from @jayunit
let g:relativenumber = 0
" set nonumber
" set relativenumber
function! ToggleRelativeNumber()
  if g:relativenumber == 0
    let g:relativenumber = 1
    set number
    set norelativenumber
  else
    let g:relativenumber = 0
    set nonumber
    set relativenumber
  endif
endfunction
map <C-X> :call ToggleRelativeNumber()<cr>
