# Initialise rbenv
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

# Enable vi(m) style modal editing
set -o vi

# For Homebrew
#export PATH="/usr/local/bin:$PATH"

# Path to bash_it configuration
export BASH_IT="$HOME/.bash_it"

# set custom theme 
export BASH_IT_THEME="powerline"

# Load bash_it
source $BASH_IT/bash_it.sh
