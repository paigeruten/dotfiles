# Path to your oh-my-zsh installation.
export ZSH=/home/jeremy/.oh-my-zsh

# Enables "did you mean?" type of corrections.
ENABLE_CORRECTION="true"

# Non-confusing date format for history.
HIST_STAMPS="yyyy-mm-dd"

# oh-my-zsh plugins. Keeping them to a minimum, otherwise startup is way too
# slow.
#
#   command-not-found: If command isn't found, suggests what Arch package to
#     install to get the command.
#   git: Git stuff.
#   sudo: Hit escape twice to prepend sudo to your command-in-progress.
#
plugins=(command-not-found git sudo)

# Add local binaries, and Ruby and NodeJS package binaries to $PATH.
export PATH="$HOME/bin:$PATH"
export PATH="`ruby -rubygems -e 'puts Gem.user_dir'`/bin:$PATH"
export PATH="$HOME/node_modules/.bin:$PATH"
export PATH="/usr/local/heroku/bin:$PATH"

# Always use vim, not vi.
alias vi=vim

# oh-my-zsh
source $ZSH/oh-my-zsh.sh

# Source the syntax highlighting plugin.
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# The prompt. Looks like: [jeremy@ormus ~]$
PROMPT='%{$fg_bold[green]%}[%n@%m %{$fg[red]%}%2c%{$fg_bold[green]%}]$ '

# The right-hand-side prompt. Displays current git branch if any (with dirty/
# clean marker), and the time.
RPROMPT='$(git_prompt_info) %{$fg_bold[green]%}%*%{$reset_color%}'

# Display current git branch in bright white.
ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[white]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"

# Give a red X for a dirty branch, or a light grey check mark for a clean one.
ZSH_THEME_GIT_PROMPT_DIRTY=" %{$fg[red]%}✗%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN=" %{$fg[cyan]%}✔%{$reset_color%}"

