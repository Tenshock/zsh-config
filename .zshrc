# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="bira"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
plugins=(
  git
  zsh-autosuggestions
  zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh

# User configuration

# alias ohmyzsh="mate ~/.oh-my-zsh"

# Vim
alias nv="nvim"
alias nvd="nvim ."

# Other
alias cdr="cd ~/repo"
alias cda="cd ~/repo/avms"
alias cdd="cd /mnt/c/Users/X2031553/Downloads"

# Containers
alias dockip="docker inspect --format '{{ .NetworkSettings.Networks.nat.IPAddress }}'"

# Config
alias sourceconf="source ~/.zshrc"
alias makeconf="nv ~/.zshrc"
alias nvconf="cd ~/.config/nvim/lua"
alias cgtree="cargo tree --workspace --depth 0"
alias cgmodule="cargo modules generate tree --package"

# Python3
export PATH=/home/cedric/.local/bin:$PATH

# Git
function gi() { curl -sLw n https://www.toptal.com/developers/gitignore/api/$@ ;}

# nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# brew
export PATH=/home/linuxbrew/.linuxbrew/bin:$PATH

# jenv
export PATH="$HOME/.jenv/bin:$PATH"
eval "$(jenv init -)"
