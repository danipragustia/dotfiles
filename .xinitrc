while true; do
    xsetroot -name "[#StayAtHome][$(cat /sys/class/power_supply/BAT0/capacity)%][$(date +"%d-%h-%Y %H:%M")]"
    sleep 1m
done &
feh --bg-scale ~/wallpaper.jpg &
exec dwm
