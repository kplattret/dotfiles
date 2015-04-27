# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set default user
DEFAULT_USER="kevinplattret"

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="agnoster"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git rails ruby)

# Set shell source
source $ZSH/oh-my-zsh.sh

# Customize to your needs...
export PATH=$PATH:/usr/local/bin:/usr/local/sbin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin

# Make sure rbenv works on terminal load
export PATH=$HOME/.rbenv/bin:$PATH
eval "$(rbenv init -)"

# Make sure Postgres.app get used
export PATH="$PATH:/Applications/Postgres.app/Contents/Versions/9.3/bin"

# Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

# Aliases to deploy 3beards website
alias dpl3-all="git pull && git push && git push staging master && git push production master && heroku restart --app stubble && heroku restart --app threebeards"
alias dpl3-stag="git pull && git push && git push staging master && heroku restart --app stubble"
alias dpl3-prod="git pull && git push && git push production master && heroku restart --app threebeards"

# Homebrew routine
alias brew-routine="brew update && brew upgrade --all && brew doctor"
