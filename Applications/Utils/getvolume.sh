#!/bin/sh

arg="$@"

if [ "$arg" == "--help" ]; then
	echo "------------- VOL-Show 1.0 ------------"
	echo "Usage: volshow <args>"
	echo ""
	echo "Commands:"
	echo "--help    - Show this menu"
	echo "--version - Print version info"
	echo "--plain   - Outputs volume in percent  "
	echo "To only get the current volume you"
	echo "only have to run volshow w/o args"
	echo "---------------------------------------"
fi

if [ "$arg" == "--version" ]; then
	echo "volshow version 1.0"
	echo "Copyright (c) 2017 by Felix Naumann (https://failex.me)"
	echo "This program is free under the GNU GPL v3"
fi

if [ "$arg" == "--plain" ]; then
	plain="true"
else
	plain="false"
fi

hash pamixer 2>/dev/null || { echo >&2 "pamixer not found maybe it's not installed or not in your PATH!"; exit 1; }


#while :
#do
#	volume=$(pamixer --get-volume)
#	echo "${volume}%"
	#sleep 0.5
#done

volume=$(pamixer --get-volume)
if [ "$(pamixer --get-mute)" == "false" ]; then
	echo "${volume}%"
else
	echo "M"
fi

unset volume
