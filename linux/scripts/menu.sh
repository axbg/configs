
options="Reboot\nLock\nPower Off"

chosen=$(echo "$options" | rofi -dmenu -p "Choose an action:")

case "$chosen" in 
	"Reboot")
		systemctl reboot
		;;
	"Lock")
		i3lock
		;;
	"Power Off")
		systemctl poweroff
		;;
	*)
		exit 1
		;;
esac
