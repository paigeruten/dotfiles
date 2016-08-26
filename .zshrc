# The following lines were added by compinstall
zstyle :compinstall filename '/home/jeremy/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

# Colors
eval `dircolors ~/.dircolors`
alias ls="ls --color=auto -F"
alias grep="grep --color=auto"

# Vi bindings for line editing
bindkey -v

# Save 1000 lines of history in ~/.zhistory with no duplicates
HISTFILE="$HOME/.zhistory"
HISTSIZE=1000
SAVEHIST=10000
setopt appendhistory
setopt histignorealldups

# The prompt. Looks like: [jeremy@ormus ~]$
autoload -Uz colors && colors
PROMPT="%{$fg_bold[green]%}[%n@%m %{$fg_no_bold[red]%}%2c%{$fg_bold[green]%}]$ %{$reset_color%}%b"

# Show exit status (if non-zero), date, and time on right hand side
RPROMPT="%(?..%{$fg_bold[red]%}[%?]%{$reset_color%}%b  )%{$fg[yellow]%}20%D %t%{$reset_color%}%b"

# Fish-style command syntax highlighting
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# When you type a command that doesn't exist, this shows you packages that
# provide that command.
source /usr/share/doc/pkgfile/command-not-found.zsh

