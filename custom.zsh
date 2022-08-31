export VIRTUALENVWRAPPER_PYTHON=~/.asdf/shims/python
export WORKON_HOME=$HOME/.virtualenvs
export PROJECT_HOME=$HOME/
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

source <(kubectl completion zsh)

if [[ -z $TMUX ]]; then
  export PATH=$HOME/bin:$PATH
fi

source ~/src/fund-admin/.dev/fa-fn.sh
source ~/src/fund-admin/.dev/aliases.sh

export PATH="$(brew --prefix libpq)/bin:$PATH"
eval "$(pyenv init --path)"
eval "$(pyenv virtualenv-init -)"

export PYTHONBREAKPOINT="IPython.embed"
