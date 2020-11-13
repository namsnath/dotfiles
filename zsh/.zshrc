# Created by newuser for 5.8
#

# Antibody
source <(antibody init)
antibody bundle denysdovhan/spaceship-prompt

# Packages
autoload -U colors && colors

# Spaceship prompt configs
SPACESHIP_PROMPT_SEPARATE_LINE=false
SPACESHIP_GIT_PREFIX='| '

# Environment Variables
export DOT=$HOME/dotfiles

# Aliases
alias ls='ls --color=auto'
alias reload='source ~/.zshrc'
