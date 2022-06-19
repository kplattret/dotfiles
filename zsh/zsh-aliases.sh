# Package manager aliases
alias aptup="sudo apt update && sudo apt upgrade && sudo apt autoremove"

# Git custom aliases (in addition to plugin's ones)
alias gsf="gco staging && grhh origin/main && gm - && gpf"

# Rails aliases
alias rails="bundle exec rails"
alias rdbc="rails db:create"
alias rdbd="rails db:drop"
alias rdbdc="rails db:drop && rails db:create"
alias rdbm="rails db:migrate && rails db:migrate RAILS_ENV=test"
alias rdbrb="rails db:rollback && rails db:rollback RAILS_ENV=test"
alias rdbs="rails db:seed && rails db:seed RAILS_ENV=test"
alias rspec="bundle exec rspec"

# .NET aliases
alias nuget="mono /usr/local/bin/nuget.exe"

# Other
alias k="kubectl"
