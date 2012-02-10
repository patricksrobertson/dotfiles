# Must use print (not echo) for ZSH colors to work
git_branch() { print "${vcs_info_msg_0_}$(parse_git_dirty)"; }

# Stolen from oh-my-zsh
parse_git_dirty(){ [[ -n $(git status -s 2> /dev/null) ]] && echo ' ✗'; }

##########
# PROMPT #
##########
tsession=`tmux list-sessions|grep attached|sed 's/:[ 0-9A-z\(\){}]*//g'`
twindow=`tmux list-windows|grep active|sed 's/:[ ,0-9A-z\(\){}@]*//g'`
tpane=`tmux list-panes|grep active|sed 's/:[ %/,0-9A-z\(\){}]*//g'`
export PROMPT=$'%{\e[0m%}${tsession}:${twindow}:${tpane} %{\e[0;%(?.32.31)m%}>%{\e[0m%} '
export RPROMPT=$'%{$fg[blue]%}%~ $(ruby_version) $(git_branch)'
