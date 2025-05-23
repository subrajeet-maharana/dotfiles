# Path to Oh My Zsh installation
export ZSH="$HOME/.oh-my-zsh"

# Zsh Theme
ZSH_THEME="robbyrussell"

# Plugins
plugins=(git)

# Initialize Oh My Zsh
source $ZSH/oh-my-zsh.sh

# =====================
# PATH CONFIGURATIONS
# =====================
export PATH="$PATH:/opt/nvim-linux64/bin"
export PATH="$PATH:/usr/local/besu-24.12.2/bin"

# =====================
# LANGUAGE & TOOLCHAIN SETUP
# =====================
export JAVA_HOME="/usr/lib/jvm/jdk-23.0.1-oracle-x64"

# NVM
export NVM_DIR="$HOME/.nvm"
[[ -s "$NVM_DIR/nvm.sh" ]] && source "$NVM_DIR/nvm.sh"
[[ -s "$NVM_DIR/bash_completion" ]] && source "$NVM_DIR/bash_completion"

# GVM
[[ -s "$HOME/.gvm/scripts/gvm" ]] && source "$HOME/.gvm/scripts/gvm"

# =====================
# ALIASES
# =====================
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

# fzf + bat + nvim
alias nvimf='nvim $(fzf -m --preview="bat --color=always {}")'

# Alert for long running commands
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(fc -ln -1 | sed -e "s/^[ \t]*[0-9]\+[ \t]*//;s/[;&|]\s*alert$//")"'

# =====================
# LS Color Support
# =====================
if [[ -x /usr/bin/dircolors ]]; then
  if [[ -r ~/.dircolors ]]; then
    eval "$(dircolors -b ~/.dircolors)"
  else
    eval "$(dircolors -b)"
  fi
fi

# =====================
# OPTIONAL PROMPT INITs
# Uncomment to use a custom prompt manager
# =====================
# Oh My Posh (Zsh-compatible if properly configured)
# eval "$(oh-my-posh init zsh --config ~/Documents/oh-my-posh/themes/clean-detailed.omp.json)"

# Starship prompt (if installed)
# eval "$(starship init zsh)"

