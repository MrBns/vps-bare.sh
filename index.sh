
local VB_BASE="$HOME/.config/vps-bare.sh"

# Sourcing Path files for environment variable setup;
source "$VB_BASE/_path.sh"


## NVM (node version manager)
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion


#Starting Starship
export STARSHIP_CONFIG="$VB_BASE/starship-presets/gruvbox-rainbow.toml"
eval "$(starship init zsh)"

# Starting Zoxide
eval "$(zoxide init zsh --cmd j)"

source "$VB_BASE/alias.sh"