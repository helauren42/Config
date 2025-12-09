#!/usr/bin/env bash

select_folder() {
  local START_DIR="$HOME/Pictures/"

  chosen=$(find "$START_DIR" -type d -not -path '*/\.*' 2>/dev/null |
    sed "s|^$START_DIR/||" |
    sort |
    rofi -dmenu \
      -i \
      -p "Select folder" \
      -theme-str 'entry { placeholder: "Type to search…"; }' \
      -format s)

  [ -z "$chosen" ] && return 1

  if [[ "$chosen" != /* ]]; then
    echo "$START_DIR/$chosen"
  else
    echo "$chosen"
  fi
}

# Only run if script is executed directly, not sourced
if [[ "${BASH_SOURCE[0]}" == "${0}" ]]; then
  select_folder
fi
