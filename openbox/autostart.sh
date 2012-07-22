#!/bin/sh 
# feh stores the last background in .fehbg 
#eval `cat $HOME/.fehbg` &
/bin/sh  $HOME/.fehbg &
thunar --daemon &
docker -vertical &
#sleep 2 && lal &
sleep 5 && bbpager -w &
bbdock -d 24x24 &
sleep 2 && tdc &
#gtodo &
#/home/urukrama/.config/osdsh/osdsh_script &
#pypanel &
#xautolock -locker  "xte 'key Scroll_Lock'" -corners 0+00 -cornerdelay 0 &
