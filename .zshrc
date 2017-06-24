autoload -Uz compinit promptinit
compinit
promptinit

# Vim keybindings
bindkey -v

# Disable Ctrl-D to logout
setopt IGNORE_EOF

# Colors
alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias diff='diff --color=auto'

# The prompt. Looks like: [jeremy@ormus ~]$
autoload -Uz colors && colors
PROMPT="%{$fg_bold[green]%}[%n@%m %{$fg_no_bold[red]%}%2c%{$fg_bold[green]%}]$ %{$reset_color%}%b"

# Show exit status (if non-zero), date, and time on right hand side
RPROMPT="%(?..%{$fg_bold[red]%}[%?]%{$reset_color%}%b  )%{$fg[yellow]%}20%D %t%{$reset_color%}%b"

source /usr/share/doc/pkgfile/command-not-found.zsh
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
