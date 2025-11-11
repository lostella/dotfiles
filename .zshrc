# Main .zshrc file

PROMPT='%F{blue}%~ %(?.%F{green}.%F{red})%#%f '
RPROMPT='%F{cyan}[%D{%b %d, %Y, %H:%M}]%f'

HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt appendhistory
setopt share_history
setopt inc_append_history

alias g="git"

# Attach or create tmux session
# Adapted from: https://unix.stackexchange.com/a/113768
attach() {
  if command -v tmux &> /dev/null && [ -n "$PS1" ] && [[ ! "$TERM" =~ screen ]] && [[ ! "$TERM" =~ tmux ]] && [ -z "$TMUX" ]; then
    tmux attach -t main || tmux new -s main
  fi
}

# Source local configuration if it exists
if [ -f ~/.zshrc.local ]; then
  . ~/.zshrc.local
fi
