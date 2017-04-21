# My Theme

if patched_font_in_use; then
	TMUX_POWERLINE_SEPARATOR_LEFT_BOLD=""
	TMUX_POWERLINE_SEPARATOR_LEFT_THIN=""
	TMUX_POWERLINE_SEPARATOR_RIGHT_BOLD=""
	TMUX_POWERLINE_SEPARATOR_RIGHT_THIN=""
else
	TMUX_POWERLINE_SEPARATOR_LEFT_BOLD="◀"
	TMUX_POWERLINE_SEPARATOR_LEFT_THIN="❮"
	TMUX_POWERLINE_SEPARATOR_RIGHT_BOLD="▶"
	TMUX_POWERLINE_SEPARATOR_RIGHT_THIN="❯"
fi

TMUX_POWERLINE_DEFAULT_BACKGROUND_COLOR=${TMUX_POWERLINE_DEFAULT_BACKGROUND_COLOR:-'235'}
TMUX_POWERLINE_DEFAULT_FOREGROUND_COLOR=${TMUX_POWERLINE_DEFAULT_FOREGROUND_COLOR:-'255'}

TMUX_POWERLINE_DEFAULT_LEFTSIDE_SEPARATOR=${TMUX_POWERLINE_DEFAULT_LEFTSIDE_SEPARATOR:-$TMUX_POWERLINE_SEPARATOR_RIGHT_BOLD}
TMUX_POWERLINE_DEFAULT_RIGHTSIDE_SEPARATOR=${TMUX_POWERLINE_DEFAULT_RIGHTSIDE_SEPARATOR:-$TMUX_POWERLINE_SEPARATOR_LEFT_BOLD}

# Format: segment_name background_color foreground_color [non_default_separator]

if [ -z $TMUX_POWERLINE_LEFT_STATUS_SEGMENTS && $OSTYPE == darwin*]; then
	TMUX_POWERLINE_LEFT_STATUS_SEGMENTS=(
		"hostname 117 238" \
		"tmux_session_info 240 252" \
		#"ifstat 30 255" \
		#"ifstat_sys 30 255" \
		"lan_ip 238 248 ${TMUX_POWERLINE_SEPARATOR_RIGHT_THIN}" \
		"wan_ip 238 248" \
		#"vcs_branch 29 88" \
		#"vcs_compare 60 255" \
		#"vcs_staged 64 255" \
		#"vcs_modified 9 255" \
		#"vcs_others 245 0" \
)
fi

if [[ -z $TMUX_POWERLINE_RIGHT_STATUS_SEGMENTS && $OSTYPE == darwin* ]]; then
	TMUX_POWERLINE_RIGHT_STATUS_SEGMENTS=(
		#"earthquake 3 0" \
		#"pwd 89 211" \
		#"mailcount 9 255" \
		#"now_playing 234 37" \
		# "cpu 238 248" \
		#"cpu_user 238 248" \
		#"cpu_system 238 248 ${TMUX_POWERLINE_SEPARATOR_LEFT_THIN}" \
		#"cpu_idle 238 248 ${TMUX_POWERLINE_SEPARATOR_LEFT_THIN}" \
		#"load 237 167" \
		#"tmux_mem_cpu_load 234 136" \
		#"rainbarf 0 0" \
		#"xkb_layout 125 117" \
		"ssid 238 248"
		"battery 240 252" \
		"time 247 240" \
		"date_day 247 240 ${TMUX_POWERLINE_SEPARATOR_LEFT_THIN}" \
		"date 247 240 ${TMUX_POWERLINE_SEPARATOR_LEFT_THIN}" \
		#"utc_time 235 136 ${TMUX_POWERLINE_SEPARATOR_LEFT_THIN}" \
		"weather 117 238" \
	)
fi

if [ -z $TMUX_POWERLINE_LEFT_STATUS_SEGMENTS ]; then
	TMUX_POWERLINE_LEFT_STATUS_SEGMENTS=(
		"hostname 117 238" \
		"tmux_session_info 240 252" \
		#"ifstat 30 255" \
		#"ifstat_sys 30 255" \
		"lan_ip 238 248 ${TMUX_POWERLINE_SEPARATOR_RIGHT_THIN}" \
		"wan_ip 238 248" \
		#"vcs_branch 29 88" \
		#"vcs_compare 60 255" \
		#"vcs_staged 64 255" \
		#"vcs_modified 9 255" \
		#"vcs_others 245 0" \
)
fi

if [[ -z $TMUX_POWERLINE_RIGHT_STATUS_SEGMENTS ]]; then
	TMUX_POWERLINE_RIGHT_STATUS_SEGMENTS=(
		#"earthquake 3 0" \
		#"pwd 89 211" \
		#"mailcount 9 255" \
		#"now_playing 234 37" \
		# "cpu 238 248" \
		#"cpu_user 238 248" \
		#"cpu_system 238 248 ${TMUX_POWERLINE_SEPARATOR_LEFT_THIN}" \
		#"cpu_idle 238 248 ${TMUX_POWERLINE_SEPARATOR_LEFT_THIN}" \
		#"load 237 167" \
		#"tmux_mem_cpu_load 234 136" \
		#"rainbarf 0 0" \
		#"xkb_layout 125 117" \
		# "ssid 238 248"
		# "battery 240 252" \
		# "time 247 240" \
		# "date_day 247 240 ${TMUX_POWERLINE_SEPARATOR_LEFT_THIN}" \
		# "date 247 240 ${TMUX_POWERLINE_SEPARATOR_LEFT_THIN}" \
		#"utc_time 235 136 ${TMUX_POWERLINE_SEPARATOR_LEFT_THIN}" \
		# "weather 117 238" \
	)
fi

