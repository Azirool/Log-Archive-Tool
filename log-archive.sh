#!/bin/bash

#Check for user input
if [ ! -z "$1" ]
then
    echo "Using: $1 directories to log"
else
    echo "Please enter a directory to log"
fi

LOG_DIRECTORIES="$1"
TIMESTAMP=$(date +"%Y%m%d_%H%M%S")
ARCHIVE_DIR=$HOME/Desktop/Log_Archives

#Create directories if not available
mkdir -p "$ARCHIVE_DIR"

#Check if the user input a directories
if [ -d "$LOG_DIRECTORIES" ]
then
    echo "'$LOG_DIRECTORIES' is available"
    echo "Compressing the directories..."
    tar -zcvf $ARCHIVE_DIR/logs_archive_$TIMESTAMP.tar $LOG_DIRECTORIES
else
    echo "'$LOG_DIRECTORIES' is not a directories"
fi
