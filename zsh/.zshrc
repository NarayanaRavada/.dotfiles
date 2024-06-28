export ZSH="$HOME/.oh-my-zsh"
PROMPT=%(4~|.../%3~|%~)

#ZSH_THEME="refined"
ZSH_THEME="robbyrussell"
EDITOR="nvim"

DOTFILES=~/.dotfiles

# CASE_SENSITIVE="true"

zstyle ':omz:update' frequency 13

# Path
export PATH=$PATH:${HOME}/Scripts:${HOME}/go

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

if [[ ! -f ~/.zpm/zpm.zsh ]]; then
	  git clone --recursive https://github.com/zpm-zsh/zpm ~/.zpm
fi
source ~/.zpm/zpm.zsh

plugins=(
	zsh-autosuggestions
    zsh-syntax-highlighting
	git
	sudo 
)

typeset -A ZSH_HIGHLIGHT_STYLES

ZSH_HIGHLIGHT_STYLES[path]='fg=cyan'
autoload -U compinit
compinit

#bindkey '\t' autosuggest-accept
source $ZSH/oh-my-zsh.sh

# Alternative (blocks terminal for 0-3ms)
#cat ~/.cache/wal/sequences

# To add support for TTYs this line can be optionally added.
#source ~/.cache/wal/colors-tty.sh

#source /usr/share/zsh-theme-powerlevel9k/powerlevel9k.zsh-theme
#POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(user dir vcs)
#POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=()
# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# startup

# fzf keybindings
source /usr/share/fzf/completions.zsh
source /usr/share/fzf/key-bindings.zsh

# Aliases

# History
alias h="history"
alias hc="history -c"
alias hg="history | grep"

# tmux sessions
alias tmux-sessioniser="~/Scripts/itstheone/tmux-sessionizer.sh"
# key-bindings
bindkey -s '\et' 'tmux-sessioniser\n'

#exa
alias ls="exa"
alias l="exa -l"
alias la="exa -la"

eval "$(starship init zsh)"
# export ZSH="$HOME/.oh-my-zsh"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
