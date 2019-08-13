#!/usr/bin/env bash

TEMP_BLUE='40'
TEMP_GREEN='50'
TEMP_YELLOW='70'
TEMP_RED='80'

CPU_TEMP_C="$(( $(cat /sys/devices/virtual/thermal/thermal_zone0/temp) / 1000 ))"

if [ "${CPU_TEMP_C}" -gt "${TEMP_RED}" ]; then
	TEXT_COLOR='\005{..r}'
elif [ "${CPU_TEMP_C}" -gt "${TEMP_YELLOW}" ]; then
	TEXT_COLOR='\005{..y}'
elif [ "${CPU_TEMP_C}" -gt "${TEMP_GREEN}" ]; then
	TEXT_COLOR='\005{..g}'
else
	TEXT_COLOR='\005{..b}'
fi
COLOR_RESET='\005{..d}'

printf "${TEXT_COLOR}${CPU_TEMP_C}c${COLOR_RESET}\n"
