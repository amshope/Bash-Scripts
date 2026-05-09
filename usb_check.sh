#!/bin/bash

usb=`ls /dev/sd* | dmenu -l 10 -p "Choose your dev:-"`
option=`printf "Mount\nUnMount\nFormat\nCheck\nExit" | dmenu -l 10 -p "choose you option:-"`

case $option in
	Mount)	
		doas mount $usb /mnt/usb
	;;

	UnMount) 
		doas umount $usb
	;;

	Format)
		doas umount $usb 
		doas mkfs.ext4 $usb

	;;

	Chack)
		doas mount -o ro,noexec,nodev,nosuid $usb /mnt/usb_safe
		doas clamscan -r /mnt/usb_safe
		doas umount /mnt/usb_safe
	;;

	Exit)
		echo "Exit Now!..."
		break		
	;;
esac

