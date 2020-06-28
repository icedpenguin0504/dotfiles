# path

export PATH=/usr/local/bin:$PATH
export PATH="/usr/local/opt/mysql@5.7/bin:$PATH"
export PATH=$HOME/.nodebrew/current/bin:$PATH

# pyenv
#
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

# rbenv

if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"
