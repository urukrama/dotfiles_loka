#!/bin/bash
#
REMINDER=`zenity --entry --title="Timer" \
 --text="What should I do?"`
WAIT=`zenity --entry --title="Timer" \
 --text="When should I do this?"`
sleep $WAIT
zenity --info --title="Timer" --text="$REMINDER"
