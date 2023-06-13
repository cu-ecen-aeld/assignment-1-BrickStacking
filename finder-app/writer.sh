#!/bin/sh
#Write in 11/6/2023 by Brick

if [ $# -eq 2 ]
then
    echo "Right parameter with file path:$1, write str: $2. Verify..."
    #Using dirname to remove slash / from path, use to create directory if not existed
    real_path=$( dirname $1)
    echo $real_path
    if [ -d $real_path ]
    then
        #Write to file only
        echo $2 > $1
    else
        #Create path first, after that write to file. In the past wrong in mkdir -p $1 ;)
        mkdir -p $real_path && echo $2 > $1
    fi
else
    echo "Total parameter: $#, not valid input"
    echo "To run bash script correctly, run by guide below:"
    echo "./writer.sh <path file writing>  <string writing>"
    echo "Good luck ;)"
    exit 1 
fi