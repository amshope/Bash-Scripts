#!/bin/bash


#battery=`acpi -b`
#read -a battery_arr_value <<< $battery
#
#echo ${battery_arr_value[3]::-1}

while [ true ]
do
	battery=`acpi -b | cut -d ' ' -f4 | tr -d ',' | tr -d '%'`
	echo $battery
	if [ $battery -lt 20 ]
		then 
			notify-send "plz take care the battery is less than 50"
			notify-send "plz charge you battery.."
			acpi -a | grep "on"
			if [ $? -eq 0 ]
				then 
					notify-send "thank you for charge"
					notify-send "run this script agin"
					break
			fi
				
		elif [ $battery -lt 10 ]
		then 
			notify-sent "plz take care the battery is less than 10"
			notify-send "plz charge you battery.."
			acpi -a | grep "on"
			if [ $? -eq 0 ]
				then 
					notify-send "thank you for charge"
					notify-send "run this script agin"
					break
			fi
	fi
	sleep 60 
done 
