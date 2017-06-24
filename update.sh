#!/bin/bash

# Copy the dotfiles.
cp ~/.{gitconfig,tmux.conf,vimrc,zprofile,zshrc} .

# Package stats.
num_pkgs=$(pacman -Qq | wc -l)
num_explicit=$(pacman -Qqe | wc -l)
num_base=$(pacman -Qqg base base-devel | wc -l)
num_aur=$(pacman -Qqm | wc -l)
num_deps=$(pacman -Qqd | wc -l)

echo '# Arch Linux Packages' > packages.md
echo >> packages.md
echo "I currently have \`$num_pkgs\` packages installed:" >> packages.md
echo >> packages.md
echo "  * \`$num_base\` packages are in the \`base\` or \`base-devel\` groups." >> packages.md
echo "  * \`$((num_explicit - num_base))\` non-base packages were explicitly installed by me." >> packages.md
echo "    * \`$num_aur\` of these are from the [AUR](https://aur.archlinux.org)." >> packages.md
echo "  * \`$num_deps\` packages were installed as dependencies to other packages." >> packages.md
echo >> packages.md

echo '## Explicitly installed packages' >> packages.md
echo >> packages.md
expac '  * `%n` %d' $(comm -23 <(pacman -Qqen | sort) <(pacman -Qqg base base-devel | sort)) >> packages.md
echo >> packages.md

echo '## AUR packages' >> packages.md
echo >> packages.md
expac '  * `%n` %d' $(pacman -Qqm) >> packages.md
echo >> packages.md

echo '## All packages' >> packages.md
echo >> packages.md
expac --timefmt='%Y-%m-%d %T' '  * `%l` **%n** %v' >> packages.md
echo >> packages.md

