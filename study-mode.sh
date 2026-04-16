#!/usr/bin/env bash

CONFIG_FILE="${XDG_CONFIG_HOME:-$HOME/.config}/study-mode.conf"
declare -A last_notify_times

error_out() {
  notify-send "Study Mode" "$@"
  exit 1
}

load_config() {
  if [[ ! -f "$CONFIG_FILE" ]]; then
    error_out "Please create the config file \`$CONFIG_FILE\`"
  fi
  mapfile -t BLOCKED <"$CONFIG_FILE"
  if [[ "${#BLOCKED[@]}" -eq 0 ]]; then
    error_out "Your config file contains no items"
  fi
  CONFIG_MTIME=$(stat -c %Y "$CONFIG_FILE")
}

kill_app() {
  local app="$1"
  local last_time="${last_notify_times[$app]:-0}"
  local now
  now=$(date +%s)
  if pkill -TERM -fi "$app"; then
    if (( now - last_time > 10 )); then
      notify-send "Study Mode" "You can not use \`$app\` right now"
      last_notify_times[$app]=$now
    fi
  fi
}

main() {
  load_config

  while true; do
    local current_mtime
    current_mtime=$(stat -c %Y "$CONFIG_FILE" 2>/dev/null)

    if [[ "$current_mtime" != "$CONFIG_MTIME" ]]; then
      load_config
    fi

    for app in "${BLOCKED[@]}"; do
      kill_app "$app"
    done
    sleep 5
  done
}

main "$@"
