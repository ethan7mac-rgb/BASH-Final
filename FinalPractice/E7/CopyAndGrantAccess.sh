#!/bin/bash
#
#Checking number of args if less than three error
if [ "$#" -ne 3 ]; then
	echo "ERROR Please provide three arguments"
	exit 1
fi

checkTarget() {
	if [ -d "$1" ]; then
		echo "Targeting "$1" ..."
	else
		echo "Error invalid dir"
		exit 1
	fi	
}

checkSource() {	
	if [ -f "$1" ]; then
		echo "Using source "$1" ..."
	else
		echo "Error invalid file"
		exit 1
	fi
}

src="$1"
targ="$2"
usr="$3"
if checkTarget "$targ" && checkSource "$src" ; then
	cp -r "$src" "$targ"
	setfacl -m u:"$usr":r "$targ"
fi


