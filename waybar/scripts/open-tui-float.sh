#!/usr/bin/env bash
# Launch a TUI in a floating window (Hyprland 0.55+ Lua dispatch). Used by Waybar network/bluetooth/volume.
set -euo pipefail

tui="${1:-}"
case "$tui" in
nmtui | bluetui | pulsemixer) ;;
*)
	echo "usage: ${0##*/} nmtui|bluetui|pulsemixer" >&2
	exit 1
	;;
esac

term="${TERMINAL:-kitty}"
base="${term##*/}"
nmtui_wrapper="${HOME}/.config/nmtui/run-nmtui"

# Escape a string for use inside a Lua double-quoted literal (hyprctl dispatch parses Lua).
lua_quote() {
	local s="$1"
	s="${s//\\/\\\\}"
	s="${s//\"/\\\"}"
	printf '%s' "$s"
}

# Hyprland 0.55: hyprctl dispatch runs Lua; exec window rules are the second arg to hl.dsp.exec_cmd.
dispatch_float_exec() {
	local cmd="$1"
	hyprctl dispatch "hl.dsp.exec_cmd(\"$(lua_quote "$cmd")\", { float = true, center = true, rounding = 20, size = { 1060, 660 } })"
}

# nmtui: launch via ~/.config/nmtui/run-nmtui so NEWT_COLORS (Newt theme) is set.
if [[ "$tui" == nmtui && -f "$nmtui_wrapper" ]]; then
	case "$base" in
	alacritty)
		dispatch_float_exec "alacritty -e bash ${nmtui_wrapper}"
		;;
	*)
		dispatch_float_exec "${term} bash ${nmtui_wrapper}"
		;;
	esac
else
	case "$base" in
	alacritty)
		dispatch_float_exec "alacritty -e ${tui}"
		;;
	*)
		dispatch_float_exec "${term} ${tui}"
		;;
	esac
fi
