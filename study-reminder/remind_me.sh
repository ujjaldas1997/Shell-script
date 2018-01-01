#! /bin/sh
sleep 1m
while [ : ]
do
    sleep 40m
    zenity --info --title="Break time" --text="I am tired\nLet's take a break now :)"
    sleep 10m
    zenity --question --text="10 min time over.\nLet's go back to study :)"
    rc=$?
    while (($rc == 1))
    do
        sleep 5m
        zenity --question --text="Too much time wasted\nLet's go back to study please :)"
        rc=$?
    done
done
