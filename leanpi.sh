# Created by Ravbug (github.com/ravbug)
# 
# Run the script with no arguments to see about info
# This script does not remove Geany. 

#bloat lists
bloat1="bluej greenfoot nodered scratch* nuscratch sonic-pi epiphany-browser netsurf-gtk zenity omxplayer qt* debian-reference* dillo timidity smartsim *minecraft-pi wolfram-engine libreoffice* claws-mail* vlc"
bloat2="$bloat1 python* idle* greenfoot bluej oracle-java* openjdk* jackd1 libjack0 libzita-alsa-pcmi0 libzita-resampler1 gcc nodejs npm git"

echo -e "\e[1m\e[41mLean-Pi: Raspberry Pi debloater\e[0m"

# if no valid arguments, informational echo statement
if [[ $# -eq 0 ]] ; then
    echo -e "
This script removes unwanted software, 
and the software's dependencies, from fresh raspbian installs.

\e[1mList 1 (normal bloat)\e[0m
$bloat1

\e[1mList 2 (list 1 + programmer bloat)\e[0m
$bloat2

To remove bloat, re-run this script, passing the \e[1m-1\e[0m or \e[1m-2\e[0m arguments 
based on which list you want to remove.

Example: \e[1m./`basename "$0"` -2\e[0m" 
    exit 0
fi


# get arguments, and auto remove bloat based on arguments
bloatlist=;
while getopts ":12" OptionArgument; do
	case $OptionArgument in
		
		1 ) bloatlist=$bloat1;
		;;
		2 ) bloatlist=$bloat2;
		;;
		* ) echo "No valid argument passed. Re-run the script without arguments for help."; exit 1;
	esac
done

echo -e "\e[1mRemoving the following packages, and their dependencies:\e[0m
$bloatlist";

# remove the packages, their configurations, and their dependencies
sudo apt-get purge -qq --auto-remove $bloatlist -y

# remove python games
# rm -rf ~/python_games
