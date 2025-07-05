# Main .zshrc file

PS1='%F{blue}%~ %(?.%F{green}.%F{red})%#%f '

alias g="git"

# Source local configuration if it exists
if [ -f ~/.zshrc.local ]; then
  . ~/.zshrc.local
fi
