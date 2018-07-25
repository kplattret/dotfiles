#!/usr/bin/env bash

function green_color() { echo "\033[0;32m\c"; }
function blue_color() { echo "\033[0;34m\c"; }
function reset_color() { echo "\033[0m\c"; }

function welcome_message() {
  green_color
  echo "                                                                                "
  echo "                              __      __  _____ __                              "
  echo "                         ____/ /___  / /_/ __(_) /__  _____                     "
  echo "                        / __  / __ \/ __/ /_/ / / _ \/ ___/                     "
  echo "                      _/ /_/ / /_/ / /_/ __/ / /  __(__  )                      "
  echo "                     (_)__,_/\____/\__/_/ /_/_/\___/____/                       "
  echo "                                                                                "
  echo "                                 by @kplattret                                  "
  echo "                                                                                "
  blue_color
  echo "This script will guide you through installing your local development environment"
  echo "for Ruby on Rails and React applications, with Zsh, Git, Vim and other niceties."
  echo "Fear not, it will not install anything without asking you first!"

  green_color
  read -p "✨ Shall we proceed with the installation? (y/N) " -n 1
  echo

  reset_color
  if [ $REPLY != "y" ]; then
    echo "🙂 Alright then, another time maybe! 👋"
    exit 1
  fi
}

function install_command_line_tools() {
  blue_color
  echo "🍏 Trying to detect installed Command Line Tools..."

  if ! [ $(xcode-select -p) ]; then
    echo "🍏 Looks like you don't have them, but they're needed for local development."

    green_color
    read -p "🍏 Shall we install the Command Line Tools? (y/N) " -n 1
    echo

    if [ $REPLY != "y" ]; then
      reset_color
      echo "🙂 Alright then, another time maybe! 👋"
      exit 1
    fi

    blue_color
    echo "🍏 Installing the Command Line Tools... (this can take a few minutes)"
    xcode-select --install
    echo "🍏 Command Line Tools installed successfully! 🎉"
  else
    echo "🍏 Looks like you have them already! Moving on."
  fi

  reset_color
  sleep 1
}

function install_homebrew() {
  blue_color
  echo "🍺 Trying to detect installed Homebrew..."

  if ! [ $(which brew) ]; then
    echo "🍺 Looks like you don't have it, but we need it for our setup."

    green_color
    read -p "🍺 Shall we install Homebrew? (y/N) " -n 1
    echo

    if [ $REPLY != "y" ]; then
      reset_color
      echo "🙂 Alright then, another time maybe! 👋"
      exit 1
    fi

    blue_color
    echo "🍺 Installing Homebrew..."
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

    echo "🍺 Updating Homebrew, upgrading packaging and verifying installation..."
    brew update && brew upgrade && brew cleanup && brew doctor

    echo "🍺 Homebrew installed successfully! 🎉"
  else
    blue_color
    echo "🍺 Looks like you have it already! Moving on."
  fi

  reset_color
  sleep 1
}

function install_iterm() {
  blue_color
  echo "📺 Trying to detect installed iTerm..."

  if ! [ $(ls /Applications/ | grep iTerm.app) ]; then
    echo "📺 Looks like you don't have it, but we need it for our setup."

    green_color
    read -p "📺 Shall we install iTerm? (y/N) " -n 1
    echo

    if [ $REPLY != "y" ]; then
      reset_color
      echo "🙂 Alright then, another time maybe! 👋"
      exit 1
    fi

    blue_color
    echo "📺 Installing iTerm..."
    brew cask install iterm2

    echo "📺 iTerm installed successfully! 🎉"
  else
    blue_color
    echo "📺 Looks like you have it already! Moving on."
  fi

  reset_color
  sleep 1
}

function install_color_scheme() {
  green_color
  read -p "🎨 Shall we install the One Dark color-scheme for iTerm? (y/N) " -n 1
  echo

  if [ $REPLY == "y" ]; then
    blue_color
    echo "🎨 iTerm will open in 5 seconds. Import the color-scheme and close the app."
    sleep 5
    open -W ./iterm/one-dark.itermcolors

    echo "🎨 One Dark color-scheme installed successfully! 🎉"
  else
    blue_color
    echo "🎨 Skipping One Dark color-scheme installation."
  fi

  reset_color
  sleep 1
}

function install_fonts() {
  green_color
  read -p "🔠 Shall we install the patched Menlo font-family? (y/N) " -n 1
  echo

  if [ $REPLY == "y" ]; then
    blue_color
    echo "🔠 Font Book will open in 5 seconds. Install the fonts and close the app."
    sleep 5
    open -W ./iterm/menlo-powerline.ttf
    open -W ./iterm/menlo-powerline-bold.ttf
    open -W ./iterm/menlo-powerline-italic.ttf
    open -W ./iterm/menlo-powerline-bold-italic.ttf

    echo "🔠 Menlo font-family installed successfully! 🎉"
  else
    blue_color
    echo "🔠 Skipping Menlo font-family installation..."
  fi

  reset_color
  sleep 1
}

welcome_message
install_command_line_tools
install_homebrew
install_iterm
install_color_scheme
install_fonts

blue_color
echo "😃 All done, happy coding! 🚀"
reset_color

unset -f green_color\
  blue_color\
  reset_color\
  welcome_message\
  install_command_line_tools\
  install_homebrew\
  install_iterm\
  install_color_scheme\
  install_fonts

exit 0
