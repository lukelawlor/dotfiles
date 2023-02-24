# Xinit setings
xinitrc_launch=exec dbus-launch --sh-syntax --exit-with-session
xinitrc_wm=fvwm

# X settings

# Fast key repeat
xset r rate 300 50

# Load default resources before the window manager starts
xrdb ~/.Xresources

# Launch Window Manager
$xinitrc_launch $xinitrc_wm

# Multiple Window Managers (old and broken for now)
#while true; do
#	killwmwins
#
#	# Read current wm
#	wm=$(cat ~/.wm)
#
#	# Launch wm
#	case $wm in
#		shut )
#			exit 0
#			;;
#		fvwm )
#			$xlaunch fvwm
#			;;
##		icewm )
##			icewmbg
##			icesound --snooze=1 &
##			xfce4-clipman &
##			$xlaunch icewm
##			;;
##		dwm )
##			xrdb ~/.config/xres/dwm
##			feh --no-fehbg --bg-tile /home/cata/wallpapers/sea2.png
##			slstatus &
##			$xlaunch dwm
##			;;
##		xfce )
##			xrdb ~/.config/xres/xfcesol
##			randomalbum &
##			$xlaunch startxfce4
##			;;
##		wmaker )
##			# Note: startup script is ~/GNUstep/Libraries/WindowMaker/autostart
##			$xlaunch wmaker
##			;;
#	esac
#done
#unset wm
