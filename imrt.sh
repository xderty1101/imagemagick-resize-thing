#!/bin/bash

while test $# -gt 0
do
	case "${1}" in
		-k|--keep)
			if [ $2 = w ] || [ $2 = width ]
			then
				convert $4 -compress Lossless -resize $3 $5
			elif [ $2 = h ] || [ $2 = height ]
			then
				convert $4 -compress Lossless -resize x$3 $5
			elif [ $2 = p ] || [ $2 = percentage ]
			then
				convert $4 -compress Lossless -resize $3 $5
			fi
			echo done
			exit 0
			;;
		-s|--shift)
			convert $3 -compress Lossless -resize $2! $4
			echo done
			exit 0
			;;
		-h|--help)
			echo -e "imrt.sh --flag(s) resolution fileIn.jpg fileOut.png\n-s --shift\tResolution breaking image aspect ratio\n\t\tsyntax\t1920x1080\n\t\t\t3000x100%\n\n-k --keep\tkeep resolution (requires 1 of 3 flags)\n\t\tw width\t\t input width in resolution\n\t\th height\t input height in resolution\n\t\tp percentage\t input percentage in resolution(you must include %)"
			exit 0
			;;
	esac
done
echo -e "imrt.sh --flag resolution fileIn.jpg fileOut.png\n-s --shift\tResolution breaking image aspect ratio\n\t\tsyntax\t1920x1080\n\t\t\t3000x100%\n\n-k --keep\tkeep resolution (requires 1 of 3 flags)\n\t\tw width\t\t input width in resolution\n\t\th height\t input height in resolution\n\t\tp percentage\t input percentage in resolution(you must include %)"
