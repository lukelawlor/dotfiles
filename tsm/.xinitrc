# Xinit setings
xlaunch=exec dbus-launch --sh-syntax --exit-with-session

# X settings

# Fast key repeat
xset r rate 250 60

# Load default resources before the window manager starts
xrdb ~/.Xresources

# Xephyr helper background process
#xephyr-helper &

# Launch Window Manager
#$xinitrc_launch $xinitrc_wm

# Destroy the xephyr helper
#killall xephyr-helper

killwmwins(){
	# Kill window manager specific windows (i.e. those used as a decoration in specific window managers)
	killall wmclock wmsystemtray wmauda wmbubble wmwork wmtop conky xsnow stalonetray slstatus picom feh
}

# Discount display manager
# To use this, write the name of the window manager you want to use to /tmp/cv/wm, then run startx.
# You can then change /tmp/cv/wm and quit your window manager to re-evaluate the switch statement.
# This means you can either restart your window manager or switch to a new one without restarting X.
# Write an unknown window manager name to /tmp/cv/wm to end the loop.
while true; do
	killwmwins

	# Read current wm
	wm=$(cat /tmp/cv/wm)

	# Launch wm
	case $wm in
		fvwm )
			$xlaunch fvwm
			;;
		dwm )
			$xlaunch /home/cata/src/dwm/dwm
			;;
		* )
			exit 0
			;;
#		icewm )
#			icewmbg
#			icesound --snooze=1 &
#			xfce4-clipman &
#			$xlaunch icewm
#			;;
#		xfce )
#			xrdb ~/.config/xres/xfcesol
#			randomalbum &
#			$xlaunch startxfce4
#			;;
#		wmaker )
#			# Note: startup script is ~/GNUstep/Libraries/WindowMaker/autostart
#			$xlaunch wmaker
#			;;
	esac
done
