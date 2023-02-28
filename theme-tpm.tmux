#!/usr/bin/env bash

CURRENT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
OPTION="@tmux-theme"
DEFAULT=default

# currently will be the only one theme variation (default)
get_theme() {
    loca  option="$1"
	local default_value="$2"
	local option_value
    option_value=$(tmux show-option -gqv "$option")
	if [ -z "$option_value" ]; then
		echo "$default_value"
	else
		echo "$option_value"
	fi
}


main() {
    local theme
    theme=($get_theme "OPTION" "DEFAULT")
    tmux source-file "$CURRENT_DIR/${theme}.conf"
}
