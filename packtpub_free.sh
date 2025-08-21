#!/bin/bash
# Free book notification
# Create a notification icon to show what's available for free at 
# https://www.packtpub.com/packt/offers/free-learning
# TODO: FIX : clicking on notification opens apple script editor, should open browser with url.
title=`curl https://www.packtpub.com/free-learning/ 2>/dev/null | grep -A2 "info__title" | cut -f2 -d">" | cut -f1 -d"<" | tr -d "\t\n" | tr -s " "`
caption="Free Packtpub Book"
/usr/bin/osascript -e "display notification \"$caption\" with title \"$title\""
