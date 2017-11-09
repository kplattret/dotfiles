# Path to your oh-my-zsh configuration.
export ZSH="$HOME/.oh-my-zsh"

# Set default user.
DEFAULT_USER="kplattret"

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="agnoster"

# Display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Set the command execution time stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
HIST_STAMPS="yyyy-mm-dd"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git rails z zeus)

# Set shell source.
source $ZSH/oh-my-zsh.sh

export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/sbin:$PATH"

# Make sure rbenv works on terminal load.
export PATH="$PATH:$HOME/.rbenv/bin"
eval "$(rbenv init -)"

# Make sure Postgres.app gets used.
export PATH="$PATH:/Applications/Postgres.app/Contents/Versions/latest/bin"

# Homebrew routine.
alias brewup="brew update && brew upgrade && brew doctor"
