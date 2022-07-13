# my settings
# local binary path
export PATH="$PATH:$HOME/.local/bin"

# rust settings
. "$HOME/.cargo/env"

# rust tool alias
# cargo install exa bat procs ripgrep fd-find hexyl tokei deno
alias ls='exa'
alias cat='bat'
alias ps='procs'
alias grep='rg'
alias find='fd'
alias od='hexyl'
alias wc='tokei'

# volta settings
export VOLTA_HOME="$HOME/.volta"
export PATH="$VOLTA_HOME/bin:$PATH"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
