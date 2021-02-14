# Antibody
source <(antibody init)
antibody bundle denysdovhan/spaceship-prompt
antibody bundle zsh-users/zsh-autosuggestions

# Packages
autoload -U colors && colors

# Sources
source /usr/share/nvm/init-nvm.sh

# Spaceship prompt configs
SPACESHIP_PROMPT_SEPARATE_LINE=false
SPACESHIP_GIT_PREFIX='| '

# Environment Variables
export DOT=$HOME/dotfiles
# export JAVA_OPTS='-XX:+IgnoreUnrecognizedVMOptions --add-modules java.se.ee'
export JAVA_HOME='/usr/lib/jvm/java-8-openjdk'
# export JAVA_HOME='/usr/lib/jvm/java-14-openjdk'
export ANDROID_SDK_ROOT='/opt/android-sdk'

# History
HISTSIZE=1000
SAVEHIST=1000
HISTFILE=~/.zhistory

# Keybinds
## Ctrl + Right
bindkey "^[[1;5C" forward-word
## Ctrl + Left
bindkey "^[[1;5D" backward-word

# Aliases
alias ls='ls --color=auto'
alias reload='source ~/.zshrc'
alias ssh='kitty +kitten ssh'
alias suspend='systemctl suspend'
alias fast_mirrors='sudo reflector --latest 20 --sort rate --save /etc/pacman.d/mirrorlist'
## Flavours
alias get_foreground=$'flavours info $(flavours current) | sed -n \'8p\' | cut -d " " -f2'
alias gen_flavour_screen_1=$'flavours generate dark $(cat .fehbg | tail -1 | cut -d "\'" -f2) && flavours apply generated'
alias gen_flavour_screen_2=$'flavours generate dark $(cat .fehbg | tail -1 | cut -d "\'" -f4) && flavours apply generated'
## Git
alias git_prune_local='git remote prune origin'
alias git_prune_merged_local="git branch --merged master --no-color | grep -v '^[ *]*master$' | xargs -r git branch -d"
