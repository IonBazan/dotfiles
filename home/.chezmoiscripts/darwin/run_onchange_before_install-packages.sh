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
  dockutil \
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
  qbittorrent \
  robo-3t \
  stats \
  ;
