# lean-pi

Raspbian, the official Raspberry Pi operating system, comes with a surprising amount of unwanted bloatware.
Unless you want to set up everything manually, there isn't an easy way around installing the bloatware either. 

Introducing Lean-pi, my raspbian de-bloating tool. It makes stripping your pi images of bloatware easy!

## How it works
Lean-pi contains a list of packages which serve little purpose. It uses the package manager to remove them, their configuration, and their dependencies.
Some of these packages include Scratch, Wolfram / Mathematica, Minecraft PI, Sonic Pi, and many others. On its most agressive setting, Lean-pi removes approximately 2.5 GB of unwanted data!

## How to use:
1) Make a [backup of your raspberry pi disk image](https://www.howtogeek.com/341944/how-to-clone-your-raspberry-pi-sd-card-for-foolproof-backup/). 
2) [Download the Lean-pi latest release.](https://github.com/Ravbug/lean-pi/releases) and unzip it/
3) Make the script runnable: `chmod +x leanpi.sh`
4) Run the script and follow its directions: `./leanpi.sh`
5) Restart your pi.

## Other packages
Lean-pi does not remove everything. If you want a Raspbian version with nothing on it, download the Raspbian LITE image. 
Lean-pi keeps the LXDE desktop, the Geany code editor, and some small utilities that come with the OS. 
**Whatever you do, do not remove python! That will break everything!**

## Hey! Why does my desktop look different! 
Lean-pi removes the Pixel LXDE skin that comes with Raspbian. It gets uninstalled as an incorrectly marked dependency.
To restore the Pixel skin, simply run 
```sudo apt-get install raspberry-ui-mods```
and then restart your pi. 

## Warning
I cannot test every configuration. This script can cause unintended side effects if used improperly. 
I only recommend running this script on fresh installs. 

## Bug reporting
If you find any issues, report them using the Issuse section of this repository. 
