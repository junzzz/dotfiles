export PATH=/usr/local/bin:$PATH
export PATH=/usr/local/go/bin:$PATH

export GOPATH=/Users/takagi/workspace/test/go
#export GOPATH=/Users/takagi/workspace/test/go/src/go-blog/:$GOPATH

export GOROOT=/usr/local/go
#GOPATH="$GOPATH:/Users/takagi/workspace/test/go"
export PATH="$PATH:$GOPATH/bin"
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi
export RBENV_ROOT=/usr/local/var/rbenv
export GOENVTARGET=$HOME/.goenvtarget
export PATH=$GOENVTARGET:$PATH
export WIRESHARK_APP_DIR=/Applications/Wireshark.app
export PATH="$HOME/.pyenv/shims:$PATH"
export PYENV_ROOT=/usr/local/opt/pyenv
export DOCKER_HOST=tcp://192.168.59.106:2375
