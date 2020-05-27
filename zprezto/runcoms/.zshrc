#
# Executes commands at the start of an interactive session.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

source $HOME/.aliases
source $HOME/.functions
# source $HOME/.zshrc_local
# source $HOME/.bin/tmuxinator.zsh

# Customize to your needs...
alias python=/usr/local/bin/python3
export PATH=/usr/lib/lightdm:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games
alias pip=/usr/local/bin/pip3
