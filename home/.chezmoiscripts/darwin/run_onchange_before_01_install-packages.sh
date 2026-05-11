#!/bin/bash

if [[ $OSTYPE != 'darwin'* ]]; then
  exit
fi

set -eufo pipefail

command -v brew >/dev/null 2>&1 || \
  (echo '🍺  Installing Homebrew' && /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)")

echo '📦  Installing Homebrew packages'

brew install \
  aria2 \
  awscli \
  bat \
  chezmoi \
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
  xz \
  zsh-syntax-highlighting \
  wget \
  ;

brew install --cask --no-quarantine \
  jetbrains-toolbox \
  hpedrorodrigues/tools/dockutil \
  iterm2 \
  robo-3t \
  stats \
  ;
