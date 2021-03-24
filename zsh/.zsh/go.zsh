# goenv
eval "$(goenv init -)"

export GOENV_ROOT="$HOME/.goenv"
export GOPATH="$HOME/go"
export GOBIN="$GOENV_ROOT/bin"

export PATH="$PATH:$GOBIN"

# Config
export GO111MODULE="auto"
