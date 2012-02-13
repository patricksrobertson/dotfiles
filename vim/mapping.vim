" " " is the <Leader> character
let mapleader=" "

" Change the current working directory to the directory that the current file you are editing is in.
map <Leader>cd :cd %:p:h <CR>

" Remove trailing whitespace
nnoremap <Leader>w :%s/\s\+$//e<CR>

map <Leader>n :NERDTreeToggle<CR>
" Opens an edit command with the path of the currently edited file filled in
map <Leader>e :e <C-R>=expand("%:p:h") . "/" <CR>
map <Leader>s :split <C-R>=expand("%:p:h") . "/" <CR>
map <Leader>v :vsplit <C-R>=expand("%:p:h") . "/" <CR>

" Insert the current directory into a command
cmap <C-P> <C-R>=expand("%:p:h") . "/"

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

" toggle spell check
:map <F5> :setlocal spell! spelllang=en_us<CR>
:imap <F5> <C-o>:setlocal spell! spelllang=en_us<CR>

" disable cursor keys in normal mode
map <Left>  :echo "'You suck at Vim' - W. Mernagh"<cr>
map <Right> :echo "'You suck at Vim' - W. Mernagh"<cr>
map <Up>    :echo "'You suck at Vim' - W. Mernagh"<cr>
map <Down>  :echo "'You suck at Vim' - W. Mernagh"<cr>

" Alternate file
nnoremap <leader><leader> :A<CR>

" from gabebw's files
nnoremap <Leader>A :call RunCurrentTest()<CR>
nnoremap <Leader>L :call RunCurrentLineInTest()<CR>
nnoremap <Leader>a :call Send_to_Tmux(TmuxRunCurrentTest() . "\n")<CR>
nnoremap <Leader>l :call Send_to_Tmux(TmuxRunCurrentLineInTest() . "\n")<CR>

function! CorrectTestRunner()
  if match(expand('%'), '\.feature$') != -1
    return "bundle exec cucumber"
  elseif match(expand('%'), '_spec\.rb$') != -1
    return "bundle exec rspec"
  endif
endfunction

function! RunCurrentTest()
  exec "!" . CorrectTestRunner() . " " . expand('%:p')
endfunction

function! RunCurrentLineInTest()
  exec "!" . CorrectTestRunner() . " " . expand('%:p') . ":" . line(".")
endfunctio

function! TmuxRunCurrentTest()
  return CorrectTestRunner() . " " . expand('%:p')
endfunction

function! TmuxRunCurrentLineInTest()
  return CorrectTestRunner() . " " . expand('%:p') . ":" . line(".")
endfunctio
