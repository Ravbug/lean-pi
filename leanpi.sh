# Created by Ravbug (github.com/ravbug)
# This script removes unwanted software, and the software's dependencies, from fresh raspberry pi installs.
# 
# There are two tiers: Regluar bloat and regular + programmer bloat. 
# Regular bloat contains apps like wolfram and scratch, and programmer bloat contains java, python, gcc, etc.
# This script does not remove Geany. 


bloat1="bluej greenfoot nodered scratch* nuscratch sonic-pi epiphany-browser netsurf-gtk zenity omxplayer qt* debian-reference* dillo timidity smartsim *minecraft-pi wolfram-engine libreoffice* claws-mail* vlc
"

bloat2="$bloat1 python* idle* greenfoot bluej oracle-java* openjdk* jackd1 libjack0 libzita-alsa-pcmi0 libzita-resampler1 gcc nodejs npm git
"

# remove the packages, their configurations, and their dependencies
sudo apt-get purge -q --auto-remove $bloat2

# remove python games
# rm -rf ~/python_games
