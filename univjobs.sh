#!/bin/bash

# Create Open new tab function
# needed to use exit instead of return
[ `uname -s` != "Darwin" ] && echo "Cannot run on non-macosx system." && exit

function tab_univjobs_back () {
	osascript -i <<EOF
		tell application "iTerm"
		 tell current window
			create tab with default profile
			tell the current session
			  write text "cd Desktop/univjobs-back; npm run dev"
			end tell
		end tell			
		end tell
EOF
}

# Create Open new tab function
# needed to use exit instead of return
[ `uname -s` != "Darwin" ] && echo "Cannot run on non-macosx system." && exit

function tab_univjobs_front () {
	osascript -i <<EOF
		tell application "iTerm"
		 tell current window
			create tab with default profile
			tell the current session
			  write text "cd Desktop/univjobs-front; npm run start"
			end tell
		end tell			
		end tell
EOF
}



tab_univjobs_back
tab_univjobs_front

# Startup MYSQL 
mysql.server start


#Startup redis 
redis-server 


