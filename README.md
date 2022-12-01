# My Public DOTfiles

Managed with [chezmoi](https://chezmoi.io/).

## Installation

If it's a fresh PC:
```shell
sh -c "$(curl -fsLS chezmoi.io/get)" -- init --apply IonBazan
```

If you already have `chezmoi` installed:
```shell
chezmoi init --apply IonBazan
```

You will be asked some questions in order to customize your installation. Hit <kbd>Enter</kbd> for default value.

Run `p10k configure` to install missing terminal fonts.

## Content

It currently configures following:

- Git
- zsh with plugins and themes
- [Powerlevel10k](https://github.com/romkatv/powerlevel10k)
- some Mac OS settings
- installs [brew](https://brew.sh/)
- installs essential brew packages

### Git settings

There are following git config files created:

- `~/.gitconfig` - global git settings, includes using `delta` as diff tool, colors, default branch and GPG key config,
uses personal email by default
- `~/.gitconfig_work` - only applied for git repositories located in `~/work/$work_dir/` directory - uses work email
instead of the personal one
- `~/.gitignore` - global git ignore file - applies to all repositories and includes system and IDE files
