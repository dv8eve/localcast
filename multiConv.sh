#!/bin/bash

#Author: Isabella Moreira
#Date  : 11/30/2013

#Converts all .avi's in directory to .m4v (to play in Chrome)
#then deletes all .avi's in directory so we don't have dups
osascript -e 'tell app "Terminal" to do script "HandBrakeCLIBatch /Users/isabella/Downloads/MovieLibrary/avi/ /Users/isabella/Downloads/MovieLibrary/mp4/; rm /Users/isabella/Downloads/MovieLibrary/avi/*.avi"'