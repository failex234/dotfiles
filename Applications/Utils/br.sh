#!/bin/sh

VOL_STEPS=50

vol() {
    xbacklight
}

inc() {
    [[ -n "$1" ]] && VOL_STEPS=$1
    xbacklight -inc $VOL_STEPS
    [[ -z "$2" ]] && noti
}

dec() {
    [[ -n "$1" ]] && VOL_STEPS=$1
    xbacklight -dec $VOL_STEPS
    [[ -z "$2" ]] && noti
}


noti() {
local v=${xbacklight}
local cmd=${cat /home/felix/Applications/Utils/brightness}
echo "$cmd $v"
$cmd $v
}

case "$1" in
    i|inc|increase)
        inc "$2" "$3"
        ;;
    d|dec|decrease)
        dec "$2" "$3"
        ;;
    n|noti|notify)
        noti
        ;;
    *)
        vol
        ;;
esac
