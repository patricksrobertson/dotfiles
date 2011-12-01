# alias git=hub
# The rest of my fun git aliases
alias gl='git pull --rebase --prune'
alias glog="git log --graph --pretty=format:'%Cred%h%Creset %an: %s - %Creset %C(yellow)%d%Creset %Cgreen(%cr)%Creset' --abbrev-commit --date=relative"
alias gp='git push origin HEAD'
alias gd='git diff'
alias gc='git commit'
alias gca='git commit -a'
alias gco='git checkout'
alias gs='git status -sb' # upgrade your git if -sb breaks for you. it's fun.
alias grm="git status | grep deleted | awk '{print \$3}' | xargs git rm"
alias gb='git branch -a'
alias gwm='git branch -a|grep wm'
alias gm='git branch -a --merged'
alias gmerged='echo "Merged";git branch -a --merged;echo "Not Merged";git branch -a --no-merge'
alias sourcehitch='source ~/.hitch_export_authors'
alias unhitch='`which hitch` -u;echo "export GIT_AUTHOR_NAME=\"Will Mernagh\" GIT_AUTHOR_EMAIL=\"wmernagh@gmail.com\"" > ~/.hitch_export_authors;source ~/.hitch_export_authors'
