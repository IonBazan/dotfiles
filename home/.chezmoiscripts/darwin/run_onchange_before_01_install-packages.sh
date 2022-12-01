#!/bin/bash

if [[ $OSTYPE != 'darwin'* ]]; then
  exit
fi

set -eufo pipefail

command -v brew >/dev/null 2>&1 || \
  (echo '🍺  Installing Homebrew' && /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)")

echo '📦  Installing Homebrew packages'

brew tap shivammathur/extensions
brew tap shivammathur/php

brew install \
  aria2 \
  awscli \
  aws-vault \
  bat \
  chezmoi \
  composer \
  curl \
  exiftool \
  fontconfig \
  gh \
  git \
  git-delta \
  gnupg \
  httpie \
  jq \
  node \
  php \
  symfony-cli/tap/symfony-cli \
  xz \
  zsh-syntax-highlighting \
  wget \
  ;

brew install --cask \
  hpedrorodrigues/tools/dockutil \
  iterm2 \
  qbittorrent \
  robo-3t \
  stats \
  ;
