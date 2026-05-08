#!/bin/sh

gopass_m=$(gopass ls --flat | dmenu -i -l 10 -p "Select eccount:")

gopass show "$gopass_m" | less 
