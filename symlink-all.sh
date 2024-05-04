#!/usr/bin/env bash

# General
mkdir ~/.config
touch ~/.config/z

# Alacritty
mkdir ~/.config/alacritty
ln -sf ~/Code/kplattret/dotfiles/alacritty/alacritty.toml ~/.config/alacritty/alacritty.toml

# asdf
rm ~/.asdfrc
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

# Node.js
rm -rf ~/.node_repl_history ~/.npm ~/.npmrc
mkdir ~/.config/node ~/.config/npm
ln -sf ~/Code/kplattret/dotfiles/npm/npmrc ~/.config/npm/npmrc

# Neovim
rm -rf ~/.config/nvim
ln -sf ~/Code/kplattret/dotfiles/nvim ~/.config/nvim

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

# Vim
rm -rf ~/.vim ~/.vimrc ~/.viminfo
ln -sf ~/Code/kplattret/dotfiles/vim ~/.vim
ln -sf ~/Code/kplattret/dotfiles/vim/vimrc ~/.vimrc

# Zsh
rm ~/.zshenv ~/.zsh_history ~/.zshrc
mkdir ~/.config/zsh
ln -sf ~/Code/kplattret/dotfiles/zsh/zshenv ~/.zshenv
ln -sf ~/Code/kplattret/dotfiles/zsh/zshrc ~/.config/zsh/.zshrc
