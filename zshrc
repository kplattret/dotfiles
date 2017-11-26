export ZSH="$HOME/.oh-my-zsh"

DEFAULT_USER="kplattret"
ZSH_THEME="agnoster"
HIST_STAMPS="dd/mm/yyyy"
COMPLETION_WAITING_DOTS="true"

fpath=(/usr/local/share/zsh-completions $fpath)
plugins=(git rails z zeus)

source $ZSH/oh-my-zsh.sh

export LANG=en_GB.UTF-8
export EDITOR="vim"
export PATH="$HOME/bin:/usr/local/bin:$PATH"
export SSH_KEY_PATH="$HOME/.ssh/rsa_id.pub"

export PATH="$PATH:$HOME/.rbenv/bin"
eval "$(rbenv init -)"

alias brewup="brew update && brew upgrade && brew doctor"
alias rdbc="bundle exec rails db:create"
alias rdbd="bundle exec rails db:drop"
alias rdbr="bundle exec rails db:drop && bundle exec rails db:create"
alias rdbm="bundle exec rails db:migrate && bundle exec rails db:migrate RAILS_ENV=test"
alias rdbs="bundle exec rails db:seed && bundle exec rails db:seed RAILS_ENV=test"
