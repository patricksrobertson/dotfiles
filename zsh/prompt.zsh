# Must use print (not echo) for ZSH colors to work
git_branch() { print "${vcs_info_msg_0_}$(parse_git_dirty)"; }

# Stolen from oh-my-zsh
parse_git_dirty(){ [[ -n $(git status -s 2> /dev/null) ]] && echo ' ✗'; }

##########
# PROMPT #
##########
export PROMPT=$'%{\e[0;%(?.32.31)m%}>%{\e[0m%} '
export RPROMPT=$'%{$fg[blue]%}%~ $(ruby_version) $(git_branch)'
