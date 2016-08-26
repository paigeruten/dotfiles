# Add ~/bin and ~/.node_modules/bin to $PATH.
typeset -U path
path=(~/bin ~/.node_modules/bin $path[@])

