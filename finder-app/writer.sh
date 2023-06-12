#!/bin/sh
#Write in 11/6/2023 by Brick

if [ $# -eq 2 ]
then
	echo "Right parameter with file path $dirname, write str: $2. Verify..."
    if [ -f ${1} ]
    then
        echo "Existed file!"
        rm -rf $1
    else
        echo "Create new file!"
    fi
    echo "$2" > $1
      
else
    echo "Total parameter: $#, not valid input"
    echo "To run bash script correctly, run by guide below:"
    echo "./writer.sh <path file writing>  <string writing>"
    echo "Good luck ;)"
    return 1 
fi