# Uncomment the following line to disable bi-weekly auto-update checks.
DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to disable colors in ls.
DISABLE_LS_COLORS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
DISABLE_UNTRACKED_FILES_DIRTY="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.

plugins=(
  git
  zsh-autosuggestions
  shrink-path
  colored-man-pages
)

# Suggests colour in zsh-autosuggest
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE=fg=2

# export path to the oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh
source $ZSH/oh-my-zsh.sh

# export SSH public keypath
export SSH_KEY_PATH="~/.ssh/rsa_id"

# export $PATH variable
export PATH=":/usr/local/opt/node@10/bin:$PATH"

# Customized prompt input from "Bira":
local return_code="%(?..%{$fg[red]%}%? ↵%{$reset_color%})"
local user_host='%{$terminfo[bold]$FG[189]%}%n@%m%{$reset_color%}'
local current_dir='%{$terminfo[bold]$FG[219]%}[$(shrink_path -f)]$reset_color%}'
local git_branch='$FG[190]$(git_prompt_info)%{$reset_color%}'

PROMPT="╭─[${user_host}] - ${current_dir}
╰─>${git_branch}: "

export NVM_DIR="$HOME/.nvm"
  [ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
  [ -s "/usr/local/opt/nvm/etc/bash_completion" ] && . "/usr/local/opt/nvm/etc/bash_completion"  # This loads nvm bash_completion

# Erlang bin
export PATH="/usr/local/opt/erlang@21/bin:$PATH"
