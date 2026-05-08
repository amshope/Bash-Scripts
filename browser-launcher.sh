#!/bin/sh

choice=$(printf "Firefox\nChromium\nTor Browser" | dmenu -l 10 -p "Choose your browser mode:")

case $choice in

    "Firefox") 
    		firefox 
	;;
     "Chromium")
     		chromium 
	;;
    "Tor Browser") 
    		torbrowser-launcher 
	;;
esac
