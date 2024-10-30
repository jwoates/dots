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

# Customize to your needs...
autoload -Uz promptinit
promptinit
prompt steeef
#alias python=/usr/local/bin/python3
export EDITOR=nvim

source $HOME/.aliases
source $HOME/.functions
source $HOME/.jfrog
source $HOME/.sidekiq

# scripts
export PATH="$HOME/Tools/scripts/:$PATH"

export PATH="/usr/local/opt/openjdk/bin:$PATH"
# from old install
# export PATH="$HOME/.rbenv/bin:$PATH"
export PATH=/opt/homebrew/bin:$PATH

# brew installed curl with http2 support
export PATH="/usr/local/opt/curl/bin:$PATH"

export PH=QDox4kANUX2GDmBwKjF9mZUdVlTYmRO6jw+wCE210ZTqh4cVXLQoR2nDD7CAOwcoTJtcQnRBgs+6AxxnO3A7eHn0dDOZV7HPGgKy0FT6Jz3R

# export RUBY_CONFIGURE_OPTS="--with-openssl-dir=$(brew --prefix openssl@1.1)"
# Setup Compiler paths for readline and openssl

local READLINE_PATH=$(brew --prefix readline)
#
# revert to use older 1.1 version as its required by Ruby
# local OPENSSL_PATH=$(brew --prefix openssl)
local OPENSSL_PATH=$(brew --prefix openssl@1.1)


local CERT_FILE=$(ruby -ropenssl -e 'puts OpenSSL::X509::DEFAULT_CERT_FILE')

export LDFLAGS="-L$READLINE_PATH/lib -L$OPENSSL_PATH/lib"
export CPPFLAGS="-I$READLINE_PATH/include -I$OPENSSL_PATH/include"
export PKG_CONFIG_PATH="$READLINE_PATH/lib/pkgconfig:$OPENSSL_PATH/lib/pkgconfig"

# Jmeter heap
export HEAP="-Xms1g -Xmx1g -XX:MaxMetaspaceSize=768m"

# Use the OpenSSL from Homebrew instead of ruby-build
# Note: the Homebrew version gets updated, the ruby-build version doesn't
export RUBY_CONFIGURE_OPTS="--with-openssl-dir=$OPENSSL_PATH"

# Place openssl@1.1 at the beginning of your PATH (preempt system libs)
export PATH=$OPENSSL_PATH/bin:$PATH

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

eval "$(rbenv init - zsh)"
export PATH="/opt/homebrew/sbin:$PATH"
