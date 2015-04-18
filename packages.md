# Packages

Here is where I am attempting to keep an up-to-date list of all the Arch Linux packages I have installed, and what each package is for.

* base
  * `bash`: shell
  * `bzip2`: file compressor
  * `coreutils`: basic utilities such as `cat`, `ls`, `cp`, and many others
  * `cryptsetup`: disk encryption setup
  * `device-mapper`: kernel component required by `lvm2`
  * `dhcpcd`: DHCP client
  * `diffutils`: utilities (such as `diff`) for creating patch files
  * `e2fsprogs`: ext2/3/4 filesystem utilities (like `fsck`, `mkfs`, and others)
  * `file`: file type identifier
  * `filesystem`: the contents of the root directory of an Arch Linux system, mostly directories, and some files in `/etc/`
  * `findutils`: file locator, includes `find` and `xargs`
  * `gawk`: text transformer
  * `gettext`: internationalization library
  * `glibc`: C standard library
  * `grep`: string searcher
  * `gzip`: file compressor
  * `inetutils`: network programs, including `ftp`, `telnet`, and others
  * `iproute2`: utilities for controlling TCP/IP networking (such as `ip`) and traffic control (such as `tc`)
  * `iputils`: network monitoring tools, such as `ping`
  * `jfsutils`: utilities for IBM's journaling file system
  * `less`: text file viewer
  * `licenses`: standard licenses, found under `/usr/share/licenses/common/`
  * `linux`: the linux kernel and modules
  * `logrotate`: automatically rotates, compresses, or removes log files
  * `lvm2`: Logical Volume Manager utilities
  * `man-db`: manual, includes `man`, `apropos`, `whatis`, and other utilities
  * `man-pages`: man pages for linux
  * `mdadm`: software RAID manager
  * `nano`: little text editor
  * `netctl`: network manager
  * `pacman`: package manager
  * `pciutils`: PCI device inspecting (`lspci`) and configuration (`setpci`)
  * `pcmciautils`: utilities for inserting and removing PCMCIA cards
  * `perl`: the Perl programming language, required by many things
  * `procps-ng`: system monitoring utilities, such as `free`, `pkill`, `ps`, `top`, and `uptime`
  * `psmisc`: more system monitoring tools, such as `killall` and `pstree`
  * `reiserfsprogs`: filesystem utilities for ReiserFS
  * `s-nail`: email program, provides `mail`
  * `sed`: stream editor
  * `shadow`: user account manager, includes tools such as `passwd`, `useradd`, `groupadd`, etc.
  * `sysfsutils`: utilities such as `systool` to list devices in the virtual filesystem (sysfs)
  * `systemd-sysvcompat`: provides `halt`, `init`, `poweroff`, etc.
  * `tar`: file compressor
  * `texinfo`: compiles documentation files to multiple formats (HTML, PDF, etc.)
  * `usbutils`: USB device utilities, such as `lsusb`
  * `util-linux`: system utilities for linux, such as `dmesg`, `cal`, `fsck`, `kill`, `login`, `mount`, and many others
  * `vi`: text editor
  * `which`: shows the full path of a command
  * `xfsprogs`: filesystem utilities for XFS
* base-devel
  * `autoconf`: automatically configures source code (includes `autoconf`, which creates `./configure` scripts)
  * `automake`: automatically creates `Makefile`s
  * `binutils`: utilities to work with binaries, such as `ar`, `as`, `ld`, `nm`, and `strings`
  * `bison`: parser generator
  * `fakeroot`: runs commands in an environment with fake root privileges
  * `flex`: tokenizer generator
  * `groff`: text formatting system
  * `libtool`: tool for compiling and installing libraries
  * `m4`: macro processor, used by `autoconf`, `bison`, and `flex`
  * `make`: builds and installs programs
  * `patch`: applies patches
  * `pkg-config`: gets compile/link flags for libraries
  * `sudo`: runs commands as root
* `abs`: Arch Build System utilities
* `alsa-utils`: sound support for linux
* `apache`: web server
* `audacity`: audio editor
* `baobab`: free disk space analyzer (graphical)
* `broadcom-wl`: driver for wi-fi hardware
* `chromium`: Google Chrome web browser
* `chromium-pepper-flash`: Flash plugin for `chromium`
* `chuck-pulse`: the ChucK music programming language
* `cmus`: music player
* `cups`: printing system
* `dialog`: displays dialog boxes from shell scripts, used by `wifi-menu` of the `netctl` package
* `dmenu`: program launcher for X
* `dosfstools`: filesystem utilities for DOS filesystems
* `electrum`: bitcoin wallet
* `evince`: document viewer
* `faad2`: AAC audio decoder (useful for playing audio downloaded from iTunes)
* `faenza-icon-theme`: icon theme
* `feh`: lightweight image viewer (I only use it to set the wallpaper)
* `ffmpeg`: audio/video converter, used by `audacity` and `mpv`
* `firefox`: Firefox web browser
* `flac`: FLAC audio encoder/decoder, required by `chromium`, `audacity`, `mpv`
* `gcc`: C/C++ compiler
* `gcolor2`: color selector with eye dropper
* `gdb`: debugger
* `gftp`: graphical FTP client
* `ghc`: Haskell compiler
* `git`: version control
* `gitg`: git repository visualizer
* `gksu`: graphical `sudo`
* `gst-libav`: streaming audio and video for `firefox`
* `gtk-engines`: GTK themes, includes `Clearlooks`, `Crux`, `Industrial`, `Mist`, `Redmond`, and `ThinIce`
* `higan-gtk`: emulator for NES, SNES, GB, and GBA
* `i3-wm`: tiling window manager
* `i3lock-color-git`: screen locker (this fork of `i3lock` allows you to change the colours)
* `i3status`: status bar for `i3-wm`
* `id3v2`: tag editor for mp3 files
* `imagemagick`: image viewing/manipulation program (useful for taking screenshots and converting between image formats)
* `iotop`: shows I/O usage of processes
* `jre7-openjdk`: Java runtime environment
* `kbdlight`: changes the keyboard backlight level of MacBooks
* `libmad`: audio decoder for mp3 files
* `libmp4v2`: codec for mp4 files
* `libreoffice-fresh`: office software
* `libvorbis`: codec for ogg files
* `linux-headers`: header files for building kernel modules (required to build `broadcom-wl`)
* `lm_sensors`: hardware monitoring (I use the `xsensors` front end)
* `mariadb`: MySQL server
* `minecraft`: the game Minecraft
* `mlocate`: file locator, provides `locate` and `updatedb`
* `mp3info`: mp3 tag editor
* `mpv`: video player
* `mtpaint`: paint program
* `namcap`: checks pacman packages for problems (I use it when publishing packages)
* `nodejs`: JavaScript platform
* `ntop`: shows network usage
* `openssh`: SSH tools such as `scp`, `ssh`, `ssh-agent`, `ssh-keygen`, and `sshd`
* `paprefs`: simple graphical configuration dialog for `pulseaudio`
* `pass`: password manager
* `pavucontrol`: graphical volume controller for `pulseaudio`
* `php`: the PHP programming language
* `php-apache`: PHP module for Apache
* `pkgbuild-introspection`: the `mkaurball` script, for publishing AUR packages
* `pkgfile`: used by the `command-not-found` plugin of `oh-my-zsh` to find packages that might contain the command you typed
* `polkit`: centralizess policies for allowing unprivileged programs to access privileged operations
* `pulseaudio`: sound server
* `pulseaudio-alsa`: configures ALSA to use PulseAudio
* `pulseaudio-ctl`: simple command to control pulseaudio volume (which I hook up to the media keys on my keyboard)
* `qt4`: application and UI framework, required by `electrum`
* `rng-tools`: increases available entropy with the `rngd` service
* `rsync`: useful for keeping backups of directories
* `ruby`: the Ruby programming language
* `rust-nightly-bin`: the Rust programming language
* `rxvt-unicode`: terminal emulator
* `shuffle`: works like `sort`, useful for shuffled playlists or getting random words from `/usr/share/dict`
* `slim`: login screen for X
* `steam`: Steam (games!)
* `swi-prolog`: Prolog environment
* `task`: command line todo list
* `thunar`: file browser
* `transmission-gtk`: BitTorrent client
* `ttf-dejavu`: DejaVu font family
* `ttf-freefont`: free fonts covering the Unicode character set (FreeMono, FreeSans, FreeSerif)
* `ttf-inconsolata`: a nice terminal/programming font
* `ttf-liberation`: Red Hat's Liberation fonts
* `unrar`: uncompresses RAR files
* `unzip`: uncompresses zip files
* `vim-coffeescript-git`: CoffeeScript syntax support for `vim`
* `vim-colors-solarized-git`: the Solarized theme for `vim`
* `vim-markdown`: Markdown syntax support for `vim`
* `vim-minimal`: the `vim` text editor, with minimal dependencies
* `vim-rust-git`: Rust syntax support for `vim`
* `vim-trailing-whitespace`: highlights and fixes trailing whitespace in `vim`
* `weechat`: IRC client
* `wget`: file downloader
* `wpa_actiond`: automatically connects to Wi-Fi networks
* `wpa_supplicant`: WPA support for `netctl`
* `xclip`: command line interface to the X clipboard
* `xcursor-human`: cursor theme for X
* `xf86-input-synaptics`: touchpad driver
* `xf86-video-intel`: Intel video drivers
* `xorg-server`: X server
* `xorg-xev`: shows keycodes/keysyms for each keyboard key, and other event info
* `xorg-xbacklight`: controls laptop screen backlight (which I hook up the backlight keys on my keyboard)
* `xorg-xinit`: the `startx` program
* `xorg-xinput`: configures input devices, useful for turning off mouse acceleration
* `xorg-xrdb`: useful for applying configuration in an `~/.Xresources` file to X
* `xrandr-invert-colors`: a program to invert all colours displayed on the screen (useful in dark rooms)
* `xsensors`: X front end to `lm_sensors`, shows temperature readings
* `youtube-dl`: YouTube video downloader
* `zeal-git`: offline documentation viewer
* `zip`: file compressor
* `zsh`: shell
* `zsh-syntax-highlighting`: as-you-type syntax highlighting for `zsh`

## Dependencies

* `aalib`
* `acl`
* `adwaita-icon-theme`
* `alsa-lib`
* `alsa-plugins`
* `apr`
* `apr-util`
* `archlinux-keyring`
* `aspell`
* `at-spi2-atk`
* `at-spi2-core`
* `atk`
* `atkmm`
* `attr`
* `avahi`
* `bc`
* `bluez-libs`
* `boost-libs`
* `ca-certificates`
* `ca-certificates-cacert`
* `ca-certificates-mozilla`
* `ca-certificates-utils`
* `cairo`
* `cairomm`
* `cdparanoia`
* `celt`
* `cifs-utils`
* `clucene`
* `colord`
* `compositeproto`
* `confuse`
* `cracklib`
* `cups-filters`
* `curl`
* `damageproto`
* `db`
* `dbus`
* `dbus-glib`
* `dconf`
* `desktop-file-utils`
* `dhclient`
* `djvulibre`
* `dnssec-anchors`
* `dotconf`
* `elfutils`
* `enca`
* `enchant`
* `exo`
* `expat`
* `fftw`
* `fixesproto`
* `fluidsynth`
* `fontconfig`
* `fontsproto`
* `freeglut`
* `freetype2`
* `fribidi`
* `gc`
* `gconf`
* `gconfmm`
* `gd`
* `gdbm`
* `gdk-pixbuf2`
* `geoclue`
* `geoclue2`
* `geoip`
* `geoip-database`
* `ghostscript`
* `giflib`
* `glew`
* `glib-networking`
* `glib2`
* `glibmm`
* `glu`
* `gmp`
* `gnome-desktop`
* `gnome-icon-theme`
* `gnome-icon-theme-symbolic`
* `gnupg`
* `gnutls`
* `gpgme`
* `gpm`
* `graphite`
* `gsettings-desktop-schemas`
* `gsfonts`
* `gsm`
* `gst-plugins-base`
* `gst-plugins-base-libs`
* `gst-plugins-good`
* `gstreamer`
* `gstreamer0.10`
* `gstreamer0.10-base`
* `gtk-update-icon-cache`
* `gtk2`
* `gtk3`
* `gtkmm`
* `gtkmm3`
* `gtksourceview3`
* `gtkspell3`
* `guile`
* `harfbuzz`
* `harfbuzz-icu`
* `hicolor-icon-theme`
* `hspell`
* `hunspell`
* `hwids`
* `hyphen`
* `iana-etc`
* `icu`
* `id3lib`
* `ilmbase`
* `imlib2`
* `inputproto`
* `iptables`
* `iso-codes`
* `jack`
* `jasper`
* `java-environment-common`
* `java-runtime-common`
* `jdk8-openjdk`
* `jemalloc`
* `jre7-openjdk-headless`
* `jre8-openjdk`
* `jre8-openjdk-headless`
* `js17`
* `json-c`
* `json-glib`
* `kbd`
* `kbproto`
* `keyutils`
* `kmod`
* `krb5`
* `lame`
* `lcms`
* `lcms2`
* `ldb`
* `ldns`
* `lib32-alsa-lib`
* `lib32-alsa-plugins`
* `lib32-attr`
* `lib32-bzip2`
* `lib32-curl`
* `lib32-e2fsprogs`
* `lib32-elfutils`
* `lib32-expat`
* `lib32-freetype2`
* `lib32-gcc-libs`
* `lib32-glib2`
* `lib32-glibc`
* `lib32-harfbuzz`
* `lib32-icu`
* `lib32-keyutils`
* `lib32-krb5`
* `lib32-libcap`
* `lib32-libdbus`
* `lib32-libdrm`
* `lib32-libffi`
* `lib32-libgcrypt`
* `lib32-libgpg-error`
* `lib32-libldap`
* `lib32-libpciaccess`
* `lib32-libpng`
* `lib32-libssh2`
* `lib32-libtxc_dxtn`
* `lib32-libx11`
* `lib32-libxau`
* `lib32-libxcb`
* `lib32-libxdamage`
* `lib32-libxdmcp`
* `lib32-libxext`
* `lib32-libxfixes`
* `lib32-libxshmfence`
* `lib32-libxxf86vm`
* `lib32-llvm-libs`
* `lib32-mesa`
* `lib32-mesa-libgl`
* `lib32-openssl`
* `lib32-pcre`
* `lib32-systemd`
* `lib32-util-linux`
* `lib32-wayland`
* `lib32-xz`
* `lib32-zlib`
* `libabw`
* `libaio`
* `libao`
* `libarchive`
* `libass`
* `libassuan`
* `libasyncns`
* `libatomic_ops`
* `libavc1394`
* `libbluray`
* `libbsd`
* `libcaca`
* `libcanberra`
* `libcanberra-pulse`
* `libcap`
* `libcap-ng`
* `libcddb`
* `libcdio`
* `libcdio-paranoia`
* `libcdr`
* `libcl`
* `libcroco`
* `libcue`
* `libcups`
* `libdaemon`
* `libdatrie`
* `libdbus`
* `libdrm`
* `libdv`
* `libdvdnav`
* `libdvdread`
* `libe-book`
* `libedit`
* `libepoxy`
* `libetonyek`
* `libev`
* `libevdev`
* `libevent`
* `libexif`
* `libffi`
* `libfontenc`
* `libftdi-compat`
* `libgcrypt`
* `libgee`
* `libgit2`
* `libgit2-glib`
* `libgksu`
* `libglade`
* `libglademm`
* `libgnome-keyring`
* `libgpg-error`
* `libgtop`
* `libguess`
* `libgusb`
* `libgxps`
* `libice`
* `libid3tag`
* `libidn`
* `libiec61883`
* `libirman`
* `libjpeg-turbo`
* `libksba`
* `libldap`
* `liblqr`
* `libmariadbclient`
* `libmm-glib`
* `libmng`
* `libmodplug`
* `libmpc`
* `libmspub`
* `libmwaw`
* `libnl`
* `libnm-glib`
* `libnotify`
* `libodfgen`
* `libogg`
* `libomxil-bellagio`
* `libpagemaker`
* `libpaper`
* `libpcap`
* `libpciaccess`
* `libpeas`
* `libpipeline`
* `libpng`
* `libproxy`
* `libpulse`
* `libraw1394`
* `librevenge`
* `librsvg`
* `libsamplerate`
* `libsasl`
* `libseccomp`
* `libsecret`
* `libshout`
* `libsigc++`
* `libsm`
* `libsndfile`
* `libsoup`
* `libspectre`
* `libssh`
* `libssh2`
* `libsystemd`
* `libtasn1`
* `libthai`
* `libtheora`
* `libtiff`
* `libtirpc`
* `libtxc_dxtn`
* `libunistring`
* `libunwind`
* `libusb`
* `libusb-compat`
* `libutil-linux`
* `libva`
* `libvdpau`
* `libvisio`
* `libvisual`
* `libvpx`
* `libwbclient`
* `libwebp`
* `libwpd`
* `libwpg`
* `libwps`
* `libx11`
* `libx264`
* `libxau`
* `libxaw`
* `libxcb`
* `libxcomposite`
* `libxcursor`
* `libxdamage`
* `libxdmcp`
* `libxext`
* `libxfce4ui`
* `libxfce4util`
* `libxfixes`
* `libxfont`
* `libxft`
* `libxi`
* `libxinerama`
* `libxkbcommon`
* `libxkbcommon-x11`
* `libxkbfile`
* `libxml2`
* `libxmu`
* `libxpm`
* `libxrandr`
* `libxrender`
* `libxshmfence`
* `libxslt`
* `libxss`
* `libxt`
* `libxtst`
* `libxv`
* `libxvmc`
* `libxxf86vm`
* `libyaml`
* `libzip`
* `linux-api-headers`
* `linux-firmware`
* `lirc`
* `llvm-libs`
* `lpsolve`
* `lua`
* `lz4`
* `lzo`
* `mariadb-clients`
* `mcpp`
* `mesa`
* `mesa-libgl`
* `mime-types`
* `mkinitcpio`
* `mkinitcpio-busybox`
* `mozilla-common`
* `mpfr`
* `mpg123`
* `mtdev`
* `ncurses`
* `neon`
* `nettle`
* `npth`
* `nspr`
* `nss`
* `openal`
* `opencore-amr`
* `openexr`
* `openjpeg`
* `openjpeg2`
* `openresolv`
* `openssl`
* `opus`
* `opusfile`
* `orc`
* `p11-kit`
* `pacman-mirrorlist`
* `pam`
* `pambase`
* `pango`
* `pangomm`
* `pcre`
* `perl-error`
* `perl-uri`
* `pinentry`
* `pixman`
* `poppler`
* `poppler-glib`
* `popt`
* `postgresql-libs`
* `protobuf`
* `pth`
* `pwgen`
* `pyalpm`
* `pygobject2-devel`
* `pygtk`
* `pyqt4-common`
* `python`
* `python-dbus-common`
* `python-pyelftools`
* `python-setuptools`
* `python-xdg`
* `python2`
* `python2-cairo`
* `python2-cffi`
* `python2-cryptography`
* `python2-dbus`
* `python2-dnspython`
* `python2-ecdsa`
* `python2-enum34`
* `python2-gobject2`
* `python2-pbkdf2`
* `python2-pillow`
* `python2-ply`
* `python2-protobuf`
* `python2-pyasn1`
* `python2-pyasn1-modules`
* `python2-pycparser`
* `python2-pyopenssl`
* `python2-pyqt4`
* `python2-qrcode`
* `python2-requests`
* `python2-setuptools`
* `python2-sip`
* `python2-six`
* `python2-slowaes`
* `python2-tlslite`
* `qpdf`
* `qt5-base`
* `qt5-declarative`
* `qt5-location`
* `qt5-sensors`
* `qt5-webchannel`
* `qt5-webkit`
* `qt5-xmlpatterns`
* `qtchooser`
* `qtwebkit`
* `randrproto`
* `raptor`
* `rasqal`
* `readline`
* `recode`
* `recordproto`
* `redland`
* `renderproto`
* `rest`
* `rrdtool`
* `rtkit`
* `rtmpdump`
* `rxvt-unicode-terminfo`
* `sbc`
* `schroedinger`
* `scrnsaverproto`
* `sdl`
* `shared-mime-info`
* `sip`
* `smbclient`
* `snappy`
* `sound-theme-freedesktop`
* `soundtouch`
* `speech-dispatcher`
* `speex`
* `speexdsp`
* `sqlite`
* `startup-notification`
* `systemd`
* `t1lib`
* `taglib`
* `talloc`
* `tcl`
* `tdb`
* `tevent`
* `thin-provisioning-tools`
* `tree`
* `tzdata`
* `unixodbc`
* `v4l-utils`
* `videoproto`
* `vim-runtime`
* `wavpack`
* `wayland`
* `webkit2gtk`
* `webrtc-audio-processing`
* `wireless_tools`
* `wxgtk2.8`
* `x265`
* `xcb-proto`
* `xcb-util`
* `xcb-util-cursor`
* `xcb-util-image`
* `xcb-util-keysyms`
* `xcb-util-renderutil`
* `xcb-util-wm`
* `xdg-utils`
* `xdialog`
* `xextproto`
* `xf86-input-evdev`
* `xf86vidmodeproto`
* `xfconf`
* `xineramaproto`
* `xkeyboard-config`
* `xorg-bdftopcf`
* `xorg-font-util`
* `xorg-font-utils`
* `xorg-fonts-alias`
* `xorg-fonts-encodings`
* `xorg-fonts-misc`
* `xorg-mkfontdir`
* `xorg-mkfontscale`
* `xorg-server-common`
* `xorg-setxkbmap`
* `xorg-xauth`
* `xorg-xkbcomp`
* `xorg-xrandr`
* `xorg-xset`
* `xproto`
* `xvidcore`
* `xz`
* `yajl`
* `zenity`
* `zita-alsa-pcmi`
* `zita-resampler`
* `zlib`

