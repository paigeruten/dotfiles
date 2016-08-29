typeset -U path

# npm
path=(~/.node_modules/bin $path[@])

# rubygems
export GEM_HOME=$(ruby -rubygems -e 'puts Gem.user_dir')
path=($GEM_HOME/bin $path[@])

# ~/bin
path=(~/bin $path[@])

# Select the default sound card (by default it's HDMI...)
export ALSA_CARD=PCH

