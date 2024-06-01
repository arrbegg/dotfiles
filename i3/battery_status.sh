#!/bin/bash

LOGFILE="/home/arrbegg/battery_status.log"
PATH="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin"

   # Function to get battery information
   get_battery_info() {
       local bat_path="/sys/class/power_supply/$1/uevent"
       local charge_now=$(grep "POWER_SUPPLY_ENERGY_NOW=" $bat_path | cut -d= -f2)
       local charge_full=$(grep "POWER_SUPPLY_ENERGY_FULL=" $bat_path | cut -d= -f2)
       local status=$(grep "POWER_SUPPLY_STATUS=" $bat_path | cut -d= -f2)
       local percentage=$(echo "scale=2; $charge_now / $charge_full * 100" | bc)
       echo "$status ${percentage}%"
   }
   {


     echo "Script executed at $(date)" >> $LOGFILE

   # Get information for BAT0 and BAT1
   battery0_info=$(get_battery_info BAT0)
   battery1_info=$(get_battery_info BAT1)

   # Format output
   echo "BAT0: $battery0_info | BAT1: $battery1_info"
}   2>&1 | tee -a $LOGFILE
