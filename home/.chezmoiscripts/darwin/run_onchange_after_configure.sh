#!/bin/bash

if [[ $OSTYPE != 'darwin'* ]]; then
  exit
fi

set -eufo pipefail

defaults write NSGlobalDomain AppleInterfaceStyle Dark
defaults write NSGlobalDomain AppleLanguages -array en-US
defaults write NSGlobalDomain AppleLocale pl_PL
defaults write NSGlobalDomain InitialKeyRepeat -int 15
defaults write NSGlobalDomain KeyRepeat -int 2

defaults write com.apple.finder _FXShowPosixPathInTitle -bool true

for dockItemLabel in \
  Launchpad \
  Safari \
  Mail \
  FaceTime \
  Messages \
  Maps \
  Photos \
  Contacts \
  Calendar \
  Reminders \
  Notes \
  Music \
  Podcasts \
  TV \
  News \
  Numbers \
  Keynote \
  Pages \
  "App Store" \
  "System Preferences" ; do
  dockutil --find "$dockItemLabel" >/dev/null && dockutil --no-restart --remove "$dockItemLabel"
done

killall Dock

launchctl unload -w /System/Library/LaunchAgents/com.apple.notificationcenterui.plist 2> /dev/null
