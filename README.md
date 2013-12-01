localcast
=========
I recently bought a Chromecase and wanted to use it to watch local video files. This is doable in Chrome by casting the tab, but unfortunately Chrome doesn't play all video files (.mp4's and .m4v's are a safe bet).
So I wrote these two scripts to automate my movie library conversions. It converts newly downloaded video files to .m4v and moves them to a dedicated movie library directory on my HDD. Then, I just point Chrome to "file:///Users/isabella/Downloads/MovieLibrary/" and cast the tab!

Files
-----
* convertVidDL: detects additions to specified folder and moves .avi's to dedicated movie directory
* multiConv.sh: converts all files in directory to .m4v then deletes all .avi's


Dependencies
------------
* HandBrakeCLI     : http://handbrake.fr/downloads2.php
* HandBrakeCLIBatch: https://github.com/indirect/handbrake-cli-batch


Set Up Instructions
-------------------
1. Download scripts
2. Install dependencies
3. Customize convertVidDL to your chosen movie directory (see comments provided in script)
4. Set Folder Actions to chosen folder (I chose /Downloads)
5. Set up crontab for daily batch video conversion
      See: http://stackoverflow.com/questions/882016/how-to-run-shell-script-in-mac-os-x-everyday-or-set-a-timing


Notes
-----
I originally wanted to have the convertVidDL applescript automatically convert newly downloaded .avi's before moving the dedicated directory, but it was being finicky with Terminal commands (would choose to run them only randomly, including simple echo).
So I settled for this less elegant solution, at least for the time being. I hope to clean this up in the future to allow for:
Listen to /Downloads --> if .avi, convert, move to /Downloads/MovieLibrary, delete original --> else if other movie, move to /Downloads/MovieLibrary
all within the same applescript.
