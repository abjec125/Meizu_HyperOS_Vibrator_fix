#!/system/bin/sh

echo "start"

while true; do
    logcat -b system -T 1 | grep --line-buffered "Starting vibrate" | while read line; do
        echo "man $line"
        echo 50 > /sys/class/timed_output/vibrator/duration
        echo 1 > /sys/class/timed_output/vibrator/enable
    done
    sleep 0.5
done
