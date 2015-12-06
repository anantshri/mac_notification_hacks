#!/bin/bash
# Free book notification
# Create a notification icon to show what's available for free at 
# https://www.packtpub.com/packt/offers/free-learning
# TODO: FIX : clicking on notification opens apple script editor, should open browser with url.
title=`curl https://www.packtpub.com/packt/offers/free-learning/ 2>/dev/null | grep -A2 "dotd-title" | tr "\n" " " | tr -s " " | tr -s "\t" " " | cut -f3  -d">" | cut -f1 -d"<"`
caption="Free Packtpub Book"
/usr/bin/osascript -e "display notification \"$caption\" with title \"$title\""
