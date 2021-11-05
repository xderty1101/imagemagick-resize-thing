#!/bin/bash

echo Filename?
read userFileIn
echo -e "\nNew File (can be the same file name btw)"
read userFileOut
echo Will this resization affect the aspect ratio? \(y\/N\)
read userChoice
if [ "$userChoice" = "Y" ] || [ "$userChoice" = "y" ]
then
	echo -e "Put in a value eg.\n1920x1080\n3738x100%"
	read userChoice
	convert $userFileIn -compress Lossless -resize $userChoice! $userFileOut
elif [ "$userChoice" = "N" ] || [ "$userChoice" = "n" ] || [ "$userChoice" = "" ]
then
	echo Will you use \(1\)width \(2\)height or \(3\)percentage?
	read userChoice
	if [ "$userChoice" = "1" ]
	then
		echo Please put in a value \(eg. 1920\)
		read userChoice
		convert $userFileIn -compress Lossless -resize $userChoice $userFileOut
	elif [ "$userChoice" = "2" ]
	then
		echo Please put in a value \(eg. 1080\)
		read userChoice
		convert $userFileIn -compress Lossless -resize x$userChoice $userFileOut
	elif [ "$userChoice" = "3" ]
	then
		echo Please put in a value \(eg. 50%\)
		read userChoice
		convert $userFileIn -compress Lossless -resize $userChoice $userFileOut
	else
		echo Please type 1, 2 or 3
	fi
else
	echo Please type y or n
fi
