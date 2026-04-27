bindkey -v

autoload -Uz compinit
compinit
zstyle ':completion:*' menu select
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'
zmodload zsh/complist

HISTFILE=~/.zsh_history
SAVEHIST=10000
HISTSIZE=10000

source "${0:A:h}/check.zsh"
source "${0:A:h}/aliases.zsh"
source "${0:A:h}/catppuccin_mocha-zsh-syntax-highlighting.zsh"
source /usr/share/zsh/plugins/zsh-history-substring-search/zsh-history-substring-search.zsh
bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down
bindkey -M vicmd 'k' history-substring-search-up
bindkey -M vicmd 'j' history-substring-search-down

source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

export EDITOR=nvim
export VISUAL=nvim
export STARSHIP_CONFIG="${0:A:h}/starship.toml"
eval "$(starship init zsh)"
