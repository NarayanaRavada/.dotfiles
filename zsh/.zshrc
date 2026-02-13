export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="robbyrussell"

plugins=(
  git
  sudo
  zsh-autosuggestions
  zsh-syntax-highlighting
)

autoload -Uz compinit
compinit -C

typeset -U path PATH
path+=(
  $HOME/.scripts
)
export PATH

bindkey -v

source $ZSH/oh-my-zsh.sh

# fzf keybindings
[[ -f /usr/share/fzf/completion.zsh ]] && source /usr/share/fzf/completion.zsh
[[ -f /usr/share/fzf/key-bindings.zsh ]] && source /usr/share/fzf/key-bindings.zsh

alias ll="exa -l"
alias la="exa -la"

bindkey -s '\et' 'tmux-sessioniser\n'

eval "$(starship init zsh)"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
