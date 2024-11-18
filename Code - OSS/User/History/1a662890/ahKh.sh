# kills all polybar instances
killall -q polybar

# runs one polybar for each window
if type "xrandr"; then
  for m in $(xrandr --query | grep " connected" | cut -d" " -f1); do
      MONITOR=$m polybar --reload example &
    done
else
    polybar --reload example &
fi