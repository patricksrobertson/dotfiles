http://www.catswhocode.com/blog/100-vim-commands-every-programmer-should-know

Vu - lowercase line
VU - uppercase line

zo - open fold
zc - close fold

^--  Comment toggle
^x^l Match line
gf   go to file
^]   go to step definition
F5   toggle spell check

^o   back out of buffer/change/etc
^i   forward into buffer/change/etc

[f Alternate file :A
]f Related file :R

How do I reselect the most recently selected visual block?
gv

How do I go to column 4 (or any other column) in the current line?
4|

How do I autocomplete the current line (not word)?
C-x-l will autocomplete as much of the current line as possible.


= cucumber.vim
If you're on a step line (Given/When/Then) in a cucumber feature file (*.feature), pressing C-] will
  go to the file where that step is defined. Pressing C-6 will go back to the
  feature file. (Thanks, Harold)
