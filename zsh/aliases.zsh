###########
# ALIASES #
###########
alias cp="cp -iv"
alias rm="rm -iv"
alias mv="mv -iv"
alias ls="ls -FGh"
alias du="du -cksh"
alias df="df -h"
# Use modern regexps for sed, i.e. "(one|two)", not "\(one\|two\)"
alias sed="sed -E"
alias noascii="sed 's/.\\[[0-9][0-9]?m//g'" # remove ASCII color codes
alias grep=egrep
alias grpe=grep # fix typo
alias pgrep="\grep -P" # PCRE-compatible
export GREP_OPTIONS="--color=auto" # removes color when piping
export GREP_COLOR='1;31' # highlight matches in red
[[ -x $(which colordiff) ]] && alias diff="colordiff -u" || alias diff="diff -u"
[[ -x $(which colormake) ]] && alias make=colormake
alias less="less -R" # correctly interpret ASCII color escapes
alias be='bundle exec'
alias rspec='be rspec'
alias cucumber='be cucumber'
