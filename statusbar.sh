while true; do
    battery=$(acpi | cut -d, -f2 | tr -d ' ')
    volume=$(pamixer --get-volume-human)
    time=$(date '+%I:%M %p')
    cpu="$(grep 'cpu ' /proc/stat | awk '{usage=($2+$4)*100/($2+$4+$5)} END {print usage "%"}')"
    mem="$(free -h | awk '/Mem:/ {print $3 "/" $2}' | tr -d "i")"
    wifi=`~/bin/wifi_status | tr -d ""`
    xsetroot -name " $wifi | cpu $cpu | mem $mem | $battery | $volume | $time"
    sleep 5
done
