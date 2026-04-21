bindkey -v

autoload -Uz compinit
compinit
zstyle ':completion:*' menu select
zmodload zsh/complist

source "${0:A:h}/check.zsh"
source "${0:A:h}/aliases.zsh"
source "${0:A:h}/catppuccin_mocha-zsh-syntax-highlighting.zsh"
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

export STARSHIP_CONFIG="${0:A:h}/starship.toml"
eval "$(starship init zsh)"
