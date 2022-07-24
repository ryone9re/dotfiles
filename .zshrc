# my settings
# local binary path
export PATH="$PATH:$HOME/Library/Python/3.8/bin"

# rust settings
. "$HOME/.cargo/env"

# zellij auto start
eval "$(zellij setup --generate-auto-start zsh)"

# rust tool alias
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

# brew bin path
export PATH="/usr/local/bin:$PATH"

# clangd settings
export PATH="/usr/local/opt/llvm/bin:$PATH"

# starship init
eval "$(starship init zsh)"
