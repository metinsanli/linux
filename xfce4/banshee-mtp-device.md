This "**.is_audio_player**" file is an implementation for mass storage devices (pendrive, portable HDD, etc ..) to mimic as a portable audio player in Linux music management softwares (Rythmbox, Banshee, Amorok, etc...).

This is also a workaround for some portable audio player that are not recognizable by the Linux music management softwares as a portable audio player (mount as a mass storage device when plug-in through USB).

Once the mass storage device is recognized as a portable audio player, you can use music management softwares (Rythmbox, Banshee, etc ...) to manage the music in the "portable audio player".

This file have to be created in the root path of the mass storage devices. Note that this is a hidden file (files with a "dot" in front of their filenames), so remember to enable "show hidden files" option in nautilus or use "-a" option in your "ls" command to find it.

Below are all the options available for this file:

* **name**
<br>Device name (use "" to quote a name that have spaces in between) that will appear in the music management softwares.
Without this option, the device name that appears in the music management softwares will follow the mount name specified in the system.

* **audio_folders **
<br>The list (comma separated values) of folders where music files are stored on the device. Music management softwares will copy tracks to the first folder in that list.
* Without this option, the music management software will transfer the music files to the root path.
folder_depth
The maximum foler depth supported by the device. Do not set it if the device has no limitation.

<br>If the player stores all the music with the tree / <audio_folders> /<Artist> / <Album>, use the parameter <br>

* **folder_depth = 2.**
<br>For a compilation of Beatles containing two discs with the tree 
/ <audio_folders> /Beatles/Compilation/Disc1, with folder_depth=2, sound files located in "Disc1" will not be seen.
<br><br>This parameter is also used when importing new songs:
folder_depth =0 : puts the files in the root folder specified in the first audio_folders as 
<audio_folders> /<filename> ;
folder_depth =1 : place the files in a subfolder. He will be placed in the first reported in audio_folders as 
<audio_folders> /<artiste> - <album> / <filename> ;
folder_depth =2 and above : puts the files in two sub-folder. These will be placed in the first reported in audio_folders as 
<audio_folders> /<artiste> / <album> / <filename>.
Without this option, the folder depth is considered as 0 (folder_depth=0).
output_formats 
The list of file types (MIME types, comma separated values) supported by the device. The first type listed will be used for the automatic "on-the-fly" conversion/transcoding when transferring into the "portable audio player".
Without this option, the music management software will use the file types set in it's preferences.
input_formats The list of file types (MIME types, comma separated values) supported by the device that can be save into the "portable audio player" using the microphone or from a radio show. 
Without this option, it is considered that the "portable audio player" cannot record audio.
playlist_format 
The list of playlist formats (MIME types, comma separated values) supported by the device.
playlist_path 
The folder containing playlists files on the device. 
Without this option, the music management software will copy the playlists to the same folder where it copies the music files.
cover_art_file_type 
The type of image supported by the device, such as jpeg, png, tiff, ico or bmp.
cover_art_file_name 
The filename expected by the device for the cover art image.
cover_art_size The size of the cover art image, in pixels. The image is a square, so it's only one number.

Note:
To find out the MIME types of your Ubuntu Linux, goto "/usr/share/mime".

Example:

-------.is_audio_player-------
name="My Portable Audio Player"
audio_folders=Music/, Sounds/
folder_depth=2
output_formats=audio/mpeg,audio/x-ms-wma,application/ogg
-----------------------------------