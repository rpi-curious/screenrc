#!/usr/bin/env bash
colorize_percent(){
	_percent="${1%.*}"
	if [ "${_percent}" -lt "15" ]; then
		_text_color='\005{..r}'
	elif [ "${_percent}" -lt "25" ]; then
		_text_color='\005{..y}'
	elif [ "${_percent}" -lt "50" ]; then
		_text_color='\005{..g}'
	else
		_text_color='\005{..b}'
	fi
	_text_color_reset='\005{..d}'
	echo -en "${_text_color}${_percent}%${_text_color_reset}"
}

_disk_free_used="$(df -h / | awk '/[0-9]+%/ {gsub("%",""); print $5}')"

if [ -n "${_disk_free_used}" ]; then
        _disk_free_free="$(( 100 - ${_disk_free_used} ))"
        _output_string="Disk: $(colorize_percent "${_disk_free_free}")"
fi

printf '%s\n' "${_output_string}"
