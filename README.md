# .dotfiles

Personal macOS dotfiles for shell, Git, terminal, and editor configuration.

This repository is organized so each top-level directory can be symlinked into `$HOME`, either manually or with [GNU Stow](https://www.gnu.org/software/stow/).

## What's included

| Directory | Installs to | Purpose |
| --- | --- | --- |
| `zsh/` | `~/.zshrc` | Zsh and Oh My Zsh setup, aliases, PATH additions, and development environment helpers. |
| `git/` | `~/.gitconfig` | Global Git identity, Git LFS filter configuration, and core Git settings. |
| `config/` | `~/.config/...` | App configuration for tools such as Zed and Ghostty. |

Notable configuration:

- **Zsh**: Oh My Zsh setup, development aliases, Homebrew/Pixi/pipx/opam paths, `direnv`, and Morpho environment helpers.
- **Git**: global user identity and Git LFS filter setup.
- **Zed**: Vim mode, agent settings, theme/font preferences, keybindings, tasks, themes, and prompts.
- **Ghostty**: SF Mono font, Atom light/dark themes, translucent background, Zsh shell integration, and split-navigation keybindings.

## Prerequisites

These dotfiles assume a macOS environment with some or all of the following tools installed:

- `zsh`
- [Oh My Zsh](https://ohmyz.sh/)
- `git` and `git-lfs`
- [Homebrew](https://brew.sh/)
- [GNU Stow](https://www.gnu.org/software/stow/) for the recommended install flow
- Optional tools referenced by the shell config: `direnv`, `pixi`, `pipx`, `opam`, `morpho6`, `morphopm`, `julia`, `z`, Zed, Ghostty, and VS Code

Install Stow with Homebrew:

```sh
brew install stow
```

## Installation

> **Tip:** Dotfiles replace important local configuration. Back up any existing files before symlinking.

Clone the repository:

```sh
git clone https://github.com/emmanuellfc/.dotfiles.git ~/.dotfiles
cd ~/.dotfiles
```

Stow the packages you want:

```sh
stow zsh
stow git
stow config
```

This creates symlinks like:

```txt
~/.zshrc      -> ~/.dotfiles/zsh/.zshrc
~/.gitconfig  -> ~/.dotfiles/git/.gitconfig
~/.config     -> ~/.dotfiles/config/.config
```

Reload your shell after installing the Zsh config:

```sh
source ~/.zshrc
```

## Manual symlink option

If you do not want to use Stow, create symlinks manually:

```sh
ln -s ~/.dotfiles/zsh/.zshrc ~/.zshrc
ln -s ~/.dotfiles/git/.gitconfig ~/.gitconfig
ln -s ~/.dotfiles/config/.config ~/.config
```

If any destination already exists, move it aside first:

```sh
mv ~/.zshrc ~/.zshrc.backup
mv ~/.gitconfig ~/.gitconfig.backup
mv ~/.config ~/.config.backup
```

## Updating from the current machine

After changing local config files, copy or sync the updates back into this repository, then review the diff:

```sh
git status
git diff
```

For app configs that generate cache or state files, review changes carefully before committing. In particular, Zed may create local conversation, embedding, prompt database, and backup files under `config/.config/zed/`.

## License

MIT © Emmanuel FC
