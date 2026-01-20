if pgrep -x waybar; then
  pkill waybar
else
  waybar -c ~/.config/waybar/config_mango.jsonc -s ~/.config/waybar/style_mango.css >/dev/null 2>&1 &
fi
