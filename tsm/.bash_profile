# /etc/skel/.bash_profile

# This file is sourced by bash for login shells.  The following line
# runs your .bashrc and is recommended by the bash info pages.
if [[ -f ~/.bashrc ]] ; then
	. ~/.bashrc
fi

# Start pulseaudio daemon
pulseaudio -D

# Set pulseaudio volume to low so I don't hurt my ears
pactl -- set-sink-volume @DEFAULT_SINK@ 18%

# Create cata variables directory
mkdir -p /tmp/cv /tmp/lwd

# Initialize cata variables
cd /tmp/cv
echo fvwm >wm
echo $HOME/src/st/st >term
cd

# dcron setup
crontab ~/.config/cron/crontab.lighting
