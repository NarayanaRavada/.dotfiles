export ZSH="$HOME/.oh-my-zsh"
PROMPT=%(4~|.../%3~|%~)

#ZSH_THEME="refined"
ZSH_THEME="robbyrussell"
EDITOR="nvim"

# CASE_SENSITIVE="true"

zstyle ':omz:update' frequency 13

# Path
#PATH=${HOME}/bin/scripts:${PATH}
PATH=$PATH:${HOME}/Scripts:/usr/local/go/bin

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

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

bindkey -v

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
source /usr/share/fzf/completion.zsh
source /usr/share/fzf/key-bindings.zsh

# Aliases

# History
alias h="history"
alias hc="history -c"
alias hg="history | grep"

alias wind="sudo ntfs-3g /dev/nvme0n1p6 ~/windows"

# tmux sessions
alias tmux-sessioniser="~/Scripts/itstheone/tmux-sessioniser.sh"
# key-bindings
bindkey -s '\et' 'tmux-sessioniser\n'

#exa
alias ls="exa"
alias l="exa -l"
alias la="exa -la"

eval "$(starship init zsh)"
