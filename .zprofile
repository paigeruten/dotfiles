typeset -U path

# npm
path=(~/.node_modules/bin $path[@])

# rubygems
path=($(ruby -rubygems -e 'puts Gem.user_dir')/bin $path[@])

# ~/bin
path=(~/bin $path[@])

