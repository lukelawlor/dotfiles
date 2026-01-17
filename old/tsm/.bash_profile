# /etc/skel/.bash_profile

# This file is sourced by bash for login shells.  The following line
# runs your .bashrc and is recommended by the bash info pages.
if [[ -f ~/.bashrc ]] ; then
	. ~/.bashrc
fi

# Don't run the remaining lines in tmux
# I only want the below lines to run at login, not when tmux is run
if [[ -z $TMUX ]]; then
	# Start pulseaudio daemon
	pulseaudio -D

	# Set pulseaudio volume to low so I don't hurt my ears
	pactl -- set-sink-volume @DEFAULT_SINK@ 18%

	# Create cata variables directory
	mkdir -p /tmp/cv /tmp/lwd /tmp/lwd/yv

	# Initialize cata variables
	cd /tmp/cv
	echo fvwm >wm
	echo xterm >term
	echo 1 >lum
	echo 5000 >red
	cd

	# dcron setup
	crontab ~/.config/cron/crontab.lighting
fi
