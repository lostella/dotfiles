# Main .zshrc file

PROMPT='%F{blue}%~ %(?.%F{green}.%F{red})%#%f '
RPROMPT='%F{gray}[%D{%b %d, %Y, %H:%M}]%f'

HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt appendhistory
setopt share_history
setopt inc_append_history

alias g="git"

# Source local configuration if it exists
if [ -f ~/.zshrc.local ]; then
  . ~/.zshrc.local
fi
