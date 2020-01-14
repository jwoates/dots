# Setup fzf
# ---------
if [[ ! "$PATH" == */Users/joate3/.fzf/bin* ]]; then
  export PATH="${PATH:+${PATH}:}/Users/joate3/.fzf/bin"
fi

# Auto-completion
# ---------------
[[ $- == *i* ]] && source "~/.fzf/shell/completion.zsh" 2> /dev/null

# Key bindings
# ------------
source "~/.fzf/shell/key-bindings.zsh"
