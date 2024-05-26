#!/usr/bin/env bash

# TODO: Move ~/.bundle to ~/.config
# TODO: Move ~/.docker to ~/.config
# TODO: Move ~/.gem to ~/.config
# TODO: Move ~/.hex to ~/.config
# TODO: Move ~/.kube to ~/.config
# TODO: Move ~/.terraform.d to ~/.config
# TODO: Move ~/.vscode to ~/.config

# General
mkdir ~/.config
# TODO: Replace z with zoxide
touch ~/.config/z

# Alacritty
mkdir ~/.config/alacritty
ln -sf ~/Code/kplattret/dotfiles/alacritty/alacritty.toml ~/.config/alacritty/alacritty.toml

# asdf
rm -rf ~/.asdf ~/.asdfrc
mkdir ~/.config/asdf
ln -sf ~/Code/kplattret/dotfiles/asdf/asdfrc ~/.config/asdf/asdfrc

# Atuin
mkdir ~/.config/atuin
ln -sf ~/Code/kplattret/dotfiles/atuin/config.toml ~/.config/atuin/config.toml

# Bash
rm ~/.bash_history ~/.bash_profile

# Cargo
rm -rf ~/.cargo
mkdir ~/.config/cargo
ln -sf ~/Code/kplattret/dotfiles/cargo/config.toml ~/.config/cargo/config.toml

# Git
rm ~/.gitconfig ~/.gitignore_global
mkdir ~/.config/git
ln -sf ~/Code/kplattret/dotfiles/git/config ~/.config/git/config
ln -sf ~/Code/kplattret/dotfiles/git/ignore ~/.config/git/ignore

# GnuPG
rm -rf ~/.gnupg
mkdir ~/.config/gnupg
ln -sf ~/Code/kplattret/dotfiles/gnupg/gpg-agent.conf ~/.config/gnupg/gpg-agent.conf
ln -sf ~/Code/kplattret/dotfiles/gnupg/gpg.conf ~/.config/gnupg/gpg.conf

# less
rm ~/.lesshst
mkdir ~/.config/less

# Markdown lint
ln -sf ~/Code/kplattret/dotfiles/markdownlint/markdownlintrc ~/.markdownlintrc

# Neovim
rm -rf ~/.cache/nvim ~/.config/nvim ~/.local/share/nvim ~/.local/state/nvim
ln -sf ~/Code/kplattret/dotfiles/nvim ~/.config/nvim

# Node.js
rm -rf ~/.node_repl_history ~/.npm ~/.npmrc
mkdir ~/.config/node ~/.config/npm
ln -sf ~/Code/kplattret/dotfiles/npm/npmrc ~/.config/npm/npmrc

# PostgreSQL
rm ~/.psql_history
mkdir ~/.config/psql

# SSH
rm  ~/.ssh/config
mkdir ~/.ssh
ln -sf ~/Code/kplattret/dotfiles/ssh/config ~/.ssh/config

# tmux
rm ~/.tmux.conf
mkdir ~/.config/tmux
ln -sf ~/Code/kplattret/dotfiles/tmux/tmux.conf ~/.config/tmux/tmux.conf

# Vale
mkdir ~/.config/vale
ln -sf ~/Code/kplattret/dotfiles/vale/vale.ini ~/.config/vale/vale.ini

# TODO: Move ~/.vim to ~/.config
#       Move ~/.vimrc to ~/.config
#       Or remove Vim config altogether
# Vim
rm -rf ~/.vim ~/.vimrc ~/.viminfo
# ln -sf ~/Code/kplattret/dotfiles/vim ~/.vim
# ln -sf ~/Code/kplattret/dotfiles/vim/vimrc ~/.vimrc

# Zsh
rm ~/.zcompdump-** ~/.zprofile ~/.zshenv ~/.zsh_history ~/.zshrc
mkdir ~/.config/zsh
ln -sf ~/Code/kplattret/dotfiles/zsh/zshenv ~/.zshenv
ln -sf ~/Code/kplattret/dotfiles/zsh/zshrc ~/.config/zsh/.zshrc
