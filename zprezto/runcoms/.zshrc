# Path to your oh-my-zsh configuration.
# ZSH=$HOME/Dropbox/dotfiles/.oh-my-zsh
ZSH=$HOME/oh-my-zsh
source $ZSH/oh-my-zsh.sh

# ser default theme
ZSH_THEME="zanshin"

# source ~/.aliases
# source ~/.functions
# source ~/.zshrc_local
# source ~/.bin/tmuxinator.zsh

# Customize to your needs...
export PATH=/usr/lib/lightdm:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games
export RBENV_ROOT="${HOME}/.rbenv"


if [ -d "${RBENV_ROOT}" ]; then
  export PATH="${RBENV_ROOT}/bin:${PATH}"
  eval "$(rbenv init -)"
fi
eval "$(rbenv init -)"

export PATH="$HOME/.rbenv/bin:$PATH"
