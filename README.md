# Starship Prompt Config

Personal zsh prompt and shell config powered by [Starship](https://starship.rs/) with [Catppuccin](https://catppuccin.com/) theming.

## What's included

- **Starship prompt** — `starship.toml` (catppuccin macchiato palette)
- **Syntax highlighting** — catppuccin mocha color scheme for zsh-syntax-highlighting
- **Smart aliases** — uses modern tools when available, falls back to classic commands
- **Vi mode** — `bindkey -v`
- **Tab completion** — zsh built-in compinit with menu select
- **Dependency checker** — warns about missing tools on startup

## Required

These must be installed or the prompt won't work:

| Tool | Purpose | Install |
|---|---|---|
| [starship](https://starship.rs/) ≥ 1.0 | Prompt engine | `curl -sS https://starship.rs/install.sh \| sh` |
| [zsh-syntax-highlighting](https://github.com/zsh-users/zsh-syntax-highlighting) | Syntax coloring | System package (`pacman -S zsh-syntax-highlighting`, `apt install zsh-syntax-highlighting`, etc.) |
| [Nerd Font](https://www.nerdfonts.com/) | Prompt icons | Install any Nerd Font and set it as your terminal font |

## Aliased tools

These are aliased to modern replacements. If the tool isn't installed, the alias falls back to the classic command:

| Alias | Modern tool | Falls back to | Install |
|---|---|---|---|
| `ls` | [eza](https://github.com/eza-community/eza) `--icons` | `ls --color=auto` | `pacman -S eza` / `apt install eza` |
| `ll` | `eza -l --icons` | `ls -l --color=auto` | (same) |
| `la` | `eza -la --icons` | `ls -la --color=auto` | (same) |
| `lt` | `eza --tree --icons` | `tree` | (same) |
| `lta` | `eza --tree --icons -a` | — | (same) |
| `cat` | [bat](https://github.com/sharkdp/bat) `--paging=never` | `cat` | `pacman -S bat` / `apt install bat` |

## Recommended (not aliased)

These are not aliased (different CLI syntax from the tools they replace) but are worth having:

| Tool | Replaces | Install |
|---|---|---|
| [fd](https://github.com/sharkdp/fd) | `find` | `pacman -S fd` / `apt install fd-find` |
| [ripgrep](https://github.com/BurntSushi/ripgrep) | `grep` | `pacman -S ripgrep` / `apt install ripgrep` |

## Setup

```sh
# 1. Clone this repo
git clone https://github.com/larkin1/config.starship.git ~/.config/starship

# 2. Add this line to ~/.zshrc
source "$HOME/.config/starship/init.zsh"
```

## File structure

```
~/.config/starship/
├── init.zsh                                 # Entry point — source this from .zshrc
├── check.zsh                                # Dependency checks and startup warnings
├── aliases.zsh                              # Smart aliases with fallbacks
├── catppuccin_mocha-zsh-syntax-highlighting.zsh  # Syntax highlight colors
├── starship.toml                            # Prompt config
└── README.md
```

## Sources

- [Starship docs](https://starship.rs/config/)
- [Catppuccin Starship preset](https://starship.rs/presets/catppuccin-powerline)
- [Catppuccin zsh-syntax-highlighting](https://github.com/catppuccin/zsh-syntax-highlighting)
