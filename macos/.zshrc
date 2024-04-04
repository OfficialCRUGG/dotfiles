# Fig pre block. Keep at the top of this file.
[[ -f "$HOME/.fig/shell/zshrc.pre.zsh" ]] && builtin source "$HOME/.fig/shell/zshrc.pre.zsh"

# Path
export PATH=/opt/homebrew/sbin:$HOME/bin:/usr/local/bin:/opt/homebrew/bin:$HOME/.yarn/bin:$PATH

# ZSH
export ZSH="/Users/crugg/.oh-my-zsh"

# Java
export JAVA_HOME=/Library/Java/JavaVirtualMachines/temurin-17.jdk/Contents/Home
# export JAVA_HOME=/Library/Java/JavaVirtualMachines/temurin-8.jdk/Contents/Home

# nvm
export NVM_DIR="$HOME/.nvm"
    [ -s "$(brew --prefix)/opt/nvm/nvm.sh" ] && \. "$(brew --prefix)/opt/nvm/nvm.sh" # This loads nvm
    [ -s "$(brew --prefix)/opt/nvm/etc/bash_completion.d/nvm" ] && \. "$(brew --prefix)/opt/nvm/etc/bash_completion.d/nvm" # This loads nvm bash_completion


# Configuration
ZSH_THEME="ys"
plugins=(git)
source $ZSH/oh-my-zsh.sh

# Aliases

alias ls='lsd'
alias l='lsd -l'
alias la='lsd -a'
alias lla='lsd -la'
alias lt='lsd --tree'

alias python=python3

# Google Cloud SDK.
if [ -f '/Users/crugg/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/crugg/google-cloud-sdk/path.zsh.inc'; fi
if [ -f '/Users/crugg/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/crugg/google-cloud-sdk/completion.zsh.inc'; fi

# pnpm
export PNPM_HOME="/Users/crugg/Library/pnpm"
export PATH="$PNPM_HOME:$PATH"

# bun completions
[ -s "/Users/crugg/.bun/_bun" ] && source "/Users/crugg/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

# Fig post block. Keep at the bottom of this file.
[[ -f "$HOME/.fig/shell/zshrc.post.zsh" ]] && builtin source "$HOME/.fig/shell/zshrc.post.zsh"

eval "$(starship init zsh)"
export PATH=$PATH:/Users/crugg/.spicetify
