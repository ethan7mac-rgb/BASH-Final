#!/bin/bash

source="$1"
dest="$2"

if [ ! -d "$source" ]; then
	echo ":wqError! The source directory is invalid!"
	exit 1
fi


if [ ! -d "$dest" ]; then
	read -p "Destination directory doesnt exist! Would you like to create it?" yn
	case $yn in
		y | yes ) mkdir -p "$dest" ;;
		n | no ) exit 1 ;;
		* ) echo "Please answer y/yes or n/no!" ;;
	esac
fi


for file in "$source"/*; do
	if [ -d "$file" ]; then
		continue
	fi

	filename=$(basename "$file")
	echo "$filename"

	if [ -e "$dest/$filename" ]; then
		read -p "Overwrite this file?" yn
	else
		read -p "Copy this file?" yn
	fi

	case $yn in
		y | yes ) cp "$file" "$dest/" ;;
	esac
done

