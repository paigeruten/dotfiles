typeset -U path

# ~/bin
path=(~/bin $path[@])

# rubygems
path=("$(ruby -e 'print Gem.user_dir')/bin" $path[@])

# Select default sound card (otherwise it selects HDMI)
ALSA_CARD=PCH
