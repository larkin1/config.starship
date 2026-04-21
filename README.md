# Starship Prompt Config

Personal zsh prompt and shell config powered by [Starship](https://starship.rs/) with [Catppuccin](https://catppuccin.com/) theming.

## What's included

- **Starship prompt** — `starship.toml` (catppuccin macchiato palette)
- **Syntax highlighting** — catppuccin mocha color scheme for zsh-syntax-highlighting
- **Vi mode** — `bindkey -v`
- **Tab completion** — zsh built-in compinit with menu select

## Install requirements

- [starship](https://starship.rs/) ≥ 1.0
- [zsh-syntax-highlighting](https://github.com/zsh-users/zsh-syntax-highlighting) (system package)
- A [Nerd Font](https://www.nerdfonts.com/) (for prompt icons)

## Setup

```sh
# 1. Clone this repo
git clone <repo-url> ~/.config/starship

# 2. Add this line to ~/.zshrc
source "$HOME/.config/starship/init.zsh"
```

## Sources

- [Starship docs](https://starship.rs/config/)
- [Catppuccin Starship preset](https://starship.rs/presets/catppuccin-powerline)
- [Catppuccin zsh-syntax-highlighting](https://github.com/catppuccin/zsh-syntax-highlighting)
