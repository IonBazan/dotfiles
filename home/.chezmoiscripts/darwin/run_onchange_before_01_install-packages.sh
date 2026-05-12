#!/bin/bash

if [[ $OSTYPE != 'darwin'* ]]; then
  exit
fi

set -eufo pipefail

echo '📦  Installing Homebrew packages'

brew bundle install --file=- <<EOF
brew "aria2"
brew "awscli"
brew "bat"
brew "chezmoi"
brew "curl"
brew "dockutil"
brew "exiftool"
brew "fontconfig"
brew "gh"
brew "git"
brew "git-delta"
brew "gnupg"
brew "jq"
brew "xz"
brew "zsh-syntax-highlighting"
brew "wget"

cask "iterm2"
cask "stats"
EOF
