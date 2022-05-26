#!/bin/bash

if [[ $OSTYPE != 'darwin'* ]]; then
  exit
fi

set -eufo pipefail

brew install \
  aria2 \
  awscli \
  aws-vault \
  bat \
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
  qbittorrent \
  robo-3t \
  stats \
  ;
