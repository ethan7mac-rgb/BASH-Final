#!/bin/bash

destDir="/home/cli-shared"
destFileName="Ex04-$(whoami).tar"

if [ -e "../$destFileName" ]; then
	echo "ERROR! File already exists!"
	exit 1
fi

tar -cvf "../$destFileName" . || exit 1

cp "../$destFileName" "$destDir"



