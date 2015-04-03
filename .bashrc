# If not running interactively, don't do anything.
[[ $- != *i* ]] && return

# Add Ruby gem binaries to $PATH.
export PATH="`ruby -rubygems -e 'puts Gem.user_dir'`/bin:$PATH"

# Add ~/bin to $PATH.
export PATH="$HOME/bin:$PATH"

# Add ~/node_modules/.bin to $PATH.
export PATH="$HOME/node_modules/.bin:$PATH"

# Add Heroku toolbelt to $PATH.
export PATH="/usr/local/heroku/bin:$PATH"

# Always use vim, not vi.
alias vi=vim

# Colours!
alias ls='ls --color=auto'
alias grep='grep --color=auto'

# The prompt. Looks like: [jeremy@ormus ~]$
set_prompt() {
  # ANSI colour codes.
  local NORMAL='\[\e[0m\]'
  local GREEN='\[\e[1;32m\]'
  local RED='\[\e[1;31m\]'

  PS1="${GREEN}[\u@\h ${RED}\W${GREEN}]\$${NORMAL} "
}
set_prompt

