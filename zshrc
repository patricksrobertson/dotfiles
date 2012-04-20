# We're in tmux, GO GO GO

export TMPDIR=/tmp/
BASE="$HOME/.dotfiles/zsh/"

source $BASE'key_bindings.zsh'
source $BASE'colors.zsh'
source $BASE'editor.zsh'
source $BASE'aliases.zsh'
source $BASE'path.zsh'
source $BASE'options.zsh'
source $BASE'completion.zsh'
source $BASE'vcs.zsh'
source $BASE'prompt.zsh'

############################
#         EXTRAS           #
# (non-core functionality) #
############################

source $BASE'homebrew.zsh'
source $BASE'git.zsh'
source $BASE'ruby.zsh'
source $BASE'rails.zsh'
source $BASE'rvm.zsh'
source $BASE'hitch.zsh'
source $BASE'tmuxinator.zsh'

export PATH
trim_path

# Allow for personal additions; for instance, aliases to programs only
# installed by you.
if [[ -s "$HOME/.zshrc_personal" ]]; then
  source "$HOME/.zshrc_personal"
fi

# [In]offensive short fortunes, where short means <= 140 chars
# fortune -a -s -n140

# Houston, we have liftoff.
