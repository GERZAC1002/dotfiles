#!/bin/bash
# Change the line below to the
# directory that has your wallpaper
# images
WALLPAPERS="$HOME/Hintergrund"
while true
do
	ALIST=( `ls -w1 $WALLPAPERS` )
	RANGE=${#ALIST[*]}
	SHOW=$(( $RANDOM % $RANGE ))
	echo ${ALIST[$SHOW]}
	feh --image-bg black --bg-center --bg-scale  $WALLPAPERS/${ALIST[$SHOW]}
	sleep 60
done
