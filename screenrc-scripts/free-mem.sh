#!/usr/bin/env bash
awk_calc(){ awk "BEGIN{print ${@}}"; }
in_mb(){ awk_calc "${1} / 1024"; }
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

_free_data="$(free)"
_mem_data="$(awk '/Mem:/' <<<"${_free_data}")"
_swap_data="$(awk '/Swap:/' <<<"${_free_data}")"

_output_string=""
if ! [ -z "${_mem_data}" ]; then
	_total_mem="$(awk '{print $2}' <<<"${_mem_data}")"
	_available_mem="$(awk '{print $7}' <<<"${_mem_data}")"
	_percentage_free_mem="$(awk_calc "(${_available_mem} / ${_total_mem}) * 100")"
	_output_string+="Mem: $(colorize_percent "${_percentage_free_mem}")"
fi
if ! [ -z "${_swap_data}" ]; then
	_total_swap="$(awk '{print $2}' <<<"${_swap_data}")"
	_free_swap="$(awk '{print $4}' <<<"${_swap_data}")"
	_percentage_free_swap="$(awk_calc "(${_free_swap} / ${_total_swap}) * 100")"
	if [ "${_percentage_free_swap%.*}" -lt '100' ]; then
		_output_string+=" Swap: $(colorize_percent "${_percentage_free_swap}")"
	fi
fi

printf 'Free %s\n' "${_output_string}"
