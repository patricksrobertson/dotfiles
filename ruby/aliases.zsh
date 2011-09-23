alias be="bundle exec"
alias cuc="bundle exec cucumber --format=pretty"
alias s="bundle exec rspec --format=documentation"

alias migrate='be rake db:migrate db:test:clone'
alias rc="pry -r ./config/environment.rb"
