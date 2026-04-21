_starship_dir="${0:A:h}"

_starship_check_require() {
    if ! command -v "$1" &>/dev/null; then
        if [[ -z "$_starship_missing_req" ]]; then
            _starship_missing_req=1
            echo -e "\033[1;31mstarship config: missing required dependencies:\033[0m"
        fi
        echo -e "  \033[31m✗\033[0m $1 — $2"
        echo "    Install: $3"
    fi
}

_starship_check_optional() {
    if ! command -v "$1" &>/dev/null; then
        if [[ -z "$_starship_missing_opt" ]]; then
            _starship_missing_opt=1
            _starship_opt_header=1
        fi
        _starship_missing_opts+=("$1")
        _starship_missing_descs+=("$2")
        _starship_missing_installs+=("$3")
    fi
}

typeset -a _starship_missing_opts _starship_missing_descs _starship_missing_installs

_starship_check_require "starship" "prompt engine" "https://starship.rs/"
_starship_check_require "zsh" "shell" "https://www.zsh.org/"

if [[ ! -f /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh ]]; then
    if [[ -z "$_starship_missing_req" ]]; then
        _starship_missing_req=1
        echo -e "\033[1;31mstarship config: missing required dependencies:\033[0m"
    fi
    echo -e "  \033[31m✗\033[0m zsh-syntax-highlighting — syntax coloring"
    echo "    Install: https://github.com/zsh-users/zsh-syntax-highlighting"
fi

_starship_check_optional "eza" "modern ls replacement" "https://github.com/eza-community/eza"
_starship_check_optional "bat" "modern cat replacement" "https://github.com/sharkdp/bat"
_starship_check_optional "fd" "modern find replacement" "https://github.com/sharkdp/fd"
_starship_check_optional "rg" "modern grep replacement (ripgrep)" "https://github.com/BurntSushi/ripgrep"

if [[ -n "$_starship_missing_opt" ]]; then
    echo -e "\033[1;33mstarship config: optional tools not found:\033[0m"
    for i in {1..${#_starship_missing_opts}}; do
        echo -e "  \033[33m○\033[0m ${_starship_missing_opts[$i]} — ${_starship_missing_descs[$i]}"
        echo "    Install: ${_starship_missing_installs[$i]}"
    done
fi

if [[ -n "$_starship_missing_req" ]] || [[ -n "$_starship_missing_opt" ]]; then
    echo ""
fi

unset _starship_missing_req _starship_missing_opt _starship_missing_opts _starship_missing_descs _starship_missing_installs _starship_opt_header
