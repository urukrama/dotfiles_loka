#!/bin/sh

CMD=$(dmenu_path | dmenu -b -fn '-*-nu-*-*-*-*-*-*-*-*-*-*-*-*' -nb '#545043' -nf '#D2C7A7' -sb '#D2C7A7' -sf '#545043')

# if no instance of the app has been started, launch one now
if [ -z "`wmctrl -lx | grep $CMD`" ]; then
    $CMD &
else
    # search for existing app on any desktop and move it to the current desktop
    app_on_this_desk=`wmctrl -lx | grep $CMD | cut -d ' ' -f 1`
    wmctrl -i -R $app_on_this_desk
fi;


