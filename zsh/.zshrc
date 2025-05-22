# ========== PATHs ==========
export PATH="$PATH:/opt/nvim-linux64/bin"
export PATH="$PATH:/usr/local/besu-24.12.2/bin"

# ========== Language/Toolchain ==========
export JAVA_HOME=/usr/lib/jvm/jdk-23.0.1-oracle-x64

# ========== Node Version Manager ==========
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && source "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && source "$NVM_DIR/bash_completion"

# ========== Go Version Manager ==========
[[ -s "$HOME/.gvm/scripts/gvm" ]] && source "$HOME/.gvm/scripts/gvm"

# ========== Prompt (Pick One) ==========
# eval "$(starship init zsh)"
# eval "$(oh-my-posh init zsh --config "/home/subrajeet/Documents/oh-my-posh/themes/clean-detailed.omp.json")"

# ========== History Config ==========
HISTSIZE=1000
SAVEHIST=2000
HISTFILE=~/.zsh_history
setopt append_history
setopt hist_ignore_dups
setopt share_history

# ========== Aliases ==========
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

alias nvimf='nvim $(fzf -m --preview="bat --color=always {}")'
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history | tail -n1 | sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

