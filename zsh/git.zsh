#######
# Git #
#######
function g {
  if [[ $# > 0 ]]; then
    git $@
  else
    git status -sb
  fi
}
compdef g=git
alias gl='git pull --rebase --prune'
alias glog="git log --graph --pretty=format:'%Cred%h%Creset %an: %s - %Creset %C(yellow)%d%Creset %Cgreen(%cr)%Creset' --abbrev-commit --date=relative"
alias gd='git diff'
alias gs='git status -sb' # upgrade your git if -sb breaks for you. it's fun.
alias gmerged='echo "Merged";git branch -a --merged;echo "Not Merged";git branch -a --no-merge'
alias sourcehitch='source ~/.hitch_export_authors'
alias unhitch='`which hitch` -u;echo "export GIT_AUTHOR_NAME=\"Will Mernagh\" GIT_AUTHOR_EMAIL=\"wmernagh@gmail.com\"" > ~/.hitch_export_authors;source ~/.hitch_export_authors'
