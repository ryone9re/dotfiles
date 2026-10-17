export PATH="$PATH:/$HOME/.local/bin"

if [ -x /opt/homebrew/bin/brew ]; then
    eval "$(/opt/homebrew/bin/brew shellenv)"
    FPATH="$(brew --prefix)/share/zsh-completions:$FPATH"
fi

eval "$(mise activate zsh)"

type fzf &>/dev/null && source <(fzf --zsh)
type zoxide &>/dev/null && eval "$(zoxide init zsh)"

source ~/.orbstack/shell/init.zsh 2>/dev/null || :
