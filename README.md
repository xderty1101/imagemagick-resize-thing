# imagemagick-resize-thing
resize images with imagemagick using a bash script because I'm lazy af

```
imrt.sh --flag(s) resolution fileIn.jpg fileOut.png
-s --shift	Resolution breaking image aspect ratio
		syntax	1920x1080
			3000x100%

-k --keep	keep resolution (requires 1 of 3 flags)
		w width		 input width in resolution
		h height	 input height in resolution
		p percentage	 input percentage in resolution(you must include %)
```

How to use this thing
- Download it
- chmod +x where/ever/the/file/is/imrt.sh
- run it
- ./imrt
- resize your image
- look at your image
- yes

Dependencies
- ImageMagick
