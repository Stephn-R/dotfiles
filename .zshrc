plugins=(
  git
  jump
  kubectl
)

source ~/.oh-my-zsh/oh-my-zsh.sh
source ~/.zshrc-stro

# STARSHIP
if [ type starship &> /dev/null ]; then
  printf "${red}Missing starship prompt! Please install >> https://starship.rs/guide/#%F0%9F%9A%80-installation"
else
  eval "$(starship init zsh)"
fi

autoload -U +X bashcompinit && bashcompinit
autoload -U +X compinit && compinit
