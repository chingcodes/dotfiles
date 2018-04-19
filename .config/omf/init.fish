set -xg EDITOR vim

set -x PATH $PATH "$HOME/bin"

set -xg GOROOT "$HOME/.go/go"
set -xg GOPATH "$HOME/go"

set -x PATH $PATH "$GOPATH/bin" "$GOROOT/bin"
