zoomFactor=$1

if (hyprctl getoption misc:cursor_zoom_factor | grep 'float: 1.0' &> /dev/null)
then
	# zoom was set to default, set to zoomFactor
	hyprctl keyword misc:cursor_zoom_factor $zoomFactor
else
	hyprctl keyword misc:cursor_zoom_factor 1.0
fi

## if it glitches a lot after toggling, just enable this
hyprctl dispatch forcerendererreload

