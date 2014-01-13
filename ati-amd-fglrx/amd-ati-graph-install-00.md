Good on you for trying out Linux!
<br><br>I had the same problem with my AMD Radeon HD 7770, and after a bit of research I found out that other people had been having problems with the update. It basically amounts to Ubuntu 12.10 not being compatible with the 12.10 AMD Catalyst driver.
<br><br>You are going to have to download and install the Catalyst 12.11 Beta driver for it to work (updated driver now available at support.amd.com). The gist of the tutorial can be found over on wiki.cchtml.com, but I'll restate it here. If you encounter any problems, head over to the tutorial, it has some great troubleshooting advice.
<br><br>Start off by removing your previously installed Catalyst/fglrx drivers. Everything will be done directly from the terminal, which can be accessed via Ctrl+Alt+T OR Ctrl+Alt+F1 (Ctrl+Alt+F7 to return back, out of tty, to Gnome). From the terminal, type the following:
<br><br><code>sudo sh /usr/share/ati/fglrx-uninstall.sh</code>
<br><br><code>sudo apt-get remove --purge fglrx fglrx_* fglrx-amdcccle* fglrx-dev*</code>
<br><br>Once that's done, reinstall some of the components your Catalyst driver overrode:
<br><br><code>sudo apt-get install build-essential cdbs dh-make dkms execstack dh-modaliases linux-headers-generic</code>
<br><br>If you're using a 64 bit architecture, install this too:
<br><br><code>sudo apt-get install lib32gcc1</code>
<br><br>Now, install the 13.2 beta Catalyst driver from the AMD website (a newer driver may be available):
<br><br><code>wget -c http://www2.ati.com/drivers/beta/amd-driver-installer-catalyst-13.2-beta6-linux-x86.x86_64.zip</code>
<br><br><code>unzip amd-driver-installer-catalyst-13.2-beta6-linux-x86.x86_64.zip</code>
<br><br><code>chmod +x amd-driver-installer-catalyst-13.2-beta6-linux-x86.x86_64.run</code>
<br><br>Create and install the .deb packages:
<br><br><code>sudo sh ./amd-driver-installer-catalyst-13.2-beta6-linux-x86.x86_64.run --buildpkg Ubuntu/quantal</code>
<br><br><code>sudo dpkg -i fglrx*.deb</code>
<br><br>Before rebooting your computer, edit the ATI signature file via "nano" or "gedit":
<br><br><code>sudo nano /etc/ati/signature</code>
<br><br>OR
<br><br><code>sudo gedit /etc/ati/signature</code>
<br><br>By replacing the "UNSIGNED" line with the following code:
<br><br><code>9777c589791007f4aeef06c922ad54a2:ae59f5b9572136d99fdd36f0109d358fa643f2bd4a2644d9efbb4fe91a9f6590a145:f612f0b01f2565cd9bd834f8119b309bae11a1ed4a2661c49fdf3fad11986cc4f641f1ba1f2265909a8e34ff1699309bf211a7eb4d7662cd9f8e3faf14986d92f646f1bc</code>
<br><br>Make sure to save before/on closing the file.
<br><br>That will remove the AMD "Testing" watermark (which you will now never see) from the bottom right of your screen when you reboot (source).
<br><br>Now go ahead and reboot your computer.
<br><br>Last but not least, initialise your new driver, again from the terminal:
<br><br><code>sudo amdconfig --initial -f</code>
<br><br>If this runs without a hitch, quickly test that everything is working as it should:
<br><br><code>fglrxinfo</code>
<br><br>If you receive something like this as an output, you're all set:
<br><br><code>display: :0.0  screen: 0
<br><code>OpenGL vendor string: ATI Technologies Inc.
<br><code>OpenGL renderer string: ATI Radeon HD 4550 *<small>(This line may be different depending on what graphics card you are using.)</small>*
<br><code>OpenGL version string: 3.3.11566 Compatibility Profile Context *<small>(This line may be different depending on what graphics card and Catalyst version you are using.)</small>*
<br><br>Remember, if you have any problems with the install, refer yourself to the tutorial on wiki.cchtml.com.
<br><br>Good luck!
