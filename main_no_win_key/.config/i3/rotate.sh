ORIENT=$(xrandr --current --verbose | grep primary | egrep -o ' (normal|left|inverted|right) ' | head -1;)

if [ $ORIENT == "normal" ]
then
	xrandr -o 1
	xsetwacom --set "Wacom ISDv4 E6 Pen stylus" rotate ccw
	xsetwacom --set "Wacom ISDv4 E6 Finger touch" rotate ccw
	xsetwacom --set "Wacom ISDv4 E6 Pen eraser" rotate ccw
fi

if [ $ORIENT == "left" ]
then
        xrandr -o 2
        xsetwacom --set "Wacom ISDv4 E6 Pen stylus" rotate half
        xsetwacom --set "Wacom ISDv4 E6 Finger touch" rotate half
        xsetwacom --set "Wacom ISDv4 E6 Pen eraser" rotate half
fi

if [ $ORIENT == "inverted" ]
then
        xrandr -o 3
        xsetwacom --set "Wacom ISDv4 E6 Pen stylus" rotate cw
        xsetwacom --set "Wacom ISDv4 E6 Finger touch" rotate cw
        xsetwacom --set "Wacom ISDv4 E6 Pen eraser" rotate cw
fi

if [ $ORIENT == "right" ]
then
        xrandr -o 0
        xsetwacom --set "Wacom ISDv4 E6 Pen stylus" rotate none
        xsetwacom --set "Wacom ISDv4 E6 Finger touch" rotate none
        xsetwacom --set "Wacom ISDv4 E6 Pen eraser" rotate none
fi
