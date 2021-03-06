## How to Change Font Color on the Linux Mint Xfce Desktop
<br><br>In Linux Mint Maya Xfce, if you choose a dark background, the desktop's black font suffers from lack of contrast. There is no GUI option for changing the desktop's font color. To get a light-colored font, perform the following steps:
<br><br>Open Thunar, your File Manager, and navigate to */home/[your user name]*.
<br><br>Click View and select Show Hidden Files.
<br><br>Click on the now-visible default directory.
<br><br>Edit as Root the file ".gtkrc-2.0".  What's that? There's no option in Thunar to edit as root? Well then, while we're here, let's take the time to add that option, because it is useful for many things besides just this project. In Thunar, click on Edit | Configure Custom Actions. In the window that pops up, click on the + sign to add a custom action. For the text, type in "Edit as Root", and for the command, enter : gksu gedit %f as this will open a file as Root. Click on the "Appearance Conditions" tab on the right and select Text Files and Other Files. Now you will be able to edit .gtkrc-2.0 as Root from within Thunar, so no more going to the command line just for that simple task. There is a minor glitch, however. Gedit will open up a second, untitled, empty tab each time you select this option, but it's easy enough to close that tab when you're done editing your file. The time saved opening in Thunar as root more than compensates for the second one will spend clicking [X] on the untitled empty file.
<br><br>On a new install, .gtkrc-2.0 is almost empty save for one line or so. Append the following lines to make the desktop's font colors bright instead of dark, so that they look nice and sharp on a dark background.
<br><br>style "xfdesktop-icon-view" {
<br><br>XfdesktopIconView::label-alpha = 0
<br><br>
<br><br>#Text colors you can delete these if you want you use gtk theme colors
<br>fg[NORMAL] = "#ffffff"
<br>fg[SELECTED] = "#00ff00"
<br>fg[ACTIVE] = "#0000ff"
<br>
<br>}
<br>widget_class "*XfdesktopIconView*" style "xfdesktop-icon-view"
<br><br>Save the file and you're done. You may need to reboot at this point to have your changes take effect. Better have a dark background already in place on your desktop, because the font color will be white by default and green when selected.
