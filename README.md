### GimpBatch

Changing images on a mass scale, including over-there, anywhere, and everywhere. More specifically, you can use these files to alter all images in a directory tree in one go. Think about it, if you need to make icons for hundreds/thousands/millions of pictures/images in a variety folders, then this is just what you need.

The best part? *No installation necessary*. As a matter of fact, at this point, you need to actually look at the files for configuration. Don't  worry your pretty nougat, this is a very uncomplicated process, at the moment. 

Currently *GimpBatch is only setup to scale images* either by width & height or percentages, respectively.

Remember to **Backup** your images prior, or simply use this on a **Copy** of a directory. All images in the tree will be replaced.

###***Configuration***

####GimpBatchScript.scm

Open the file in your favorite text editor. The only line to change is

line 10:
```(gimp-image-scale image (* nwidth .25) (* nheight .25))```

**By Width & Height**, change to

(gimp-image-scale image width height)

**By Percentages**, change the .25 (#A and #B, ie.. 50% = .5, 250% = 2.5, ...)

(gimp-image-scale image (* nwidth #A) (* nheight #B))

####GimpBatch.bat

First, check the location of your **Gimp install directory**. Is it "C:\program files\gimp 2\bin\"? If not, change

line 2:
```Set PATH="C:\program files\gimp 2\bin\"```

This location should be the directory where "*gimp-console-2.8.exe*" is located. Don't forget the "**\\**" at the end, right?.

Are you working with **PNG** files? No, then change 

line 6:
```%PATH%gimp-console-2.8.exe -b "(GimpBatchScript \"!new!\\*.png\" 32 32)" -b "(gimp-quit 0)"```

Change "png" to whichever fileformat you are working with, such as "jpeg". 
Also, scaling by "**width & Height**"? Change "32" and "32" (#A and #B) to the desired resolution of the image(s).

###***Install***

Place the "*GimpBatchScript.scm*" in

C:\Program Files\GIMP 2\share\gimp\2.0\scripts or "your Gimp directory"\share\gimp\2.0\scripts

*You may need administrative privledges.*

"*GimpBatch.bat*" only works on subdirectories, so place the it the *directory above* the image files to be changed.

###***Execute***

Double-click the GimpBatch.bat or run from the command line

You may see

*(bin:620): LibGimpBase-WARNING **: bin: gimp_wire_read(): error*

This is no cause for alarm! The warning always makes an appearance. You are looking for 

*batch command executed successfully*