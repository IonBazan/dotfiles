#!/bin/bash

if [[ $OSTYPE != 'darwin'* ]]; then
  exit
fi

set -eufo pipefail

command -v brew >/dev/null 2>&1 || \
  (echo '🍺  Installing Homebrew' && /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)")

