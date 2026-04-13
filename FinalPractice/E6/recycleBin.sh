#!/bin/bash
error() {
    echo "Usage:"
    echo "recycle fileName - move specified file into the ‘RecycleBin‘"
    echo "restore fileName - restore specified file from the ‘RecycleBin‘"
    exit 1
}
arg0=$(basename "$0")
fileName=$(basename "$1") 
recycleBin="$(dirname "$1")/.recycleBin"
if [ ! -d "$recycleBin" ]; then
    mkdir -p "$recycleBin"
fi

if [[ "$arg0" == "recycle" ]]; then

    if [ -e "$recycleBin/$fileName" ]; then
        echo "Error File Exists in the recyle bin!"
        exit 1
    fi

    mv "$1" "$recycleBin/"
    echo "File "$fileName" recycled"
elif [[ "$arg0" == "restore" ]]; then

    if [ ! -f "$recycleBin/$fileName" ]; then
        echo "Error File Not Found in Recycle Bin!"
        exit 1
    fi

    mv "$recycleBin/$fileName" "$(dirname "$1")"
    echo "File "$fileName" restored"

else
    error
fi