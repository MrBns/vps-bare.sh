#Aliases


# Path Exporting
VB_BASE="$HOME/.config/vps-bare.sh"
export PATH="$PATH:$HOME/.deno/bin:$HOME/.local/bin"


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