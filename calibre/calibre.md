#### Calibre Ebook Yazılımı

metin@mt:~$ sudo python -c "import sys; py3 = sys.version_info[0] > 2; u = __import__('urllib.request' if py3 else 'urllib', fromlist=1); exec(u.urlopen('http://status.calibre-ebook.com/linux_installer').read()); main()"

Enter the installation directory for calibre [/opt]: 
Will download and install calibre-1.15.0-x86_64.tar.bz2 
                   Downloading calibre-1.15.0-x86_64.tar.bz2                    
100% [======================================================================]
                                                                                Downloaded 62325170 bytes 
Checking downloaded file integrity... 
Extracting files to /opt/calibre ...
Extracting application files... 
Creating symlinks...
	Symlinking /opt/calibre/fetch-ebook-metadata to /usr/bin/fetch-ebook-metadata
	Symlinking /opt/calibre/lrf2lrs to /usr/bin/lrf2lrs
	Symlinking /opt/calibre/ebook-convert to /usr/bin/ebook-convert
	Symlinking /opt/calibre/ebook-meta to /usr/bin/ebook-meta
	Symlinking /opt/calibre/ebook-edit to /usr/bin/ebook-edit
	Symlinking /opt/calibre/lrfviewer to /usr/bin/lrfviewer
	Symlinking /opt/calibre/calibre to /usr/bin/calibre
	Symlinking /opt/calibre/markdown-calibre to /usr/bin/markdown-calibre
	Symlinking /opt/calibre/calibre-debug to /usr/bin/calibre-debug
	Symlinking /opt/calibre/calibre-parallel to /usr/bin/calibre-parallel
	Symlinking /opt/calibre/web2disk to /usr/bin/web2disk
	Symlinking /opt/calibre/calibre-server to /usr/bin/calibre-server
	Symlinking /opt/calibre/calibre-customize to /usr/bin/calibre-customize
	Symlinking /opt/calibre/ebook-polish to /usr/bin/ebook-polish
	Symlinking /opt/calibre/ebook-viewer to /usr/bin/ebook-viewer
	Symlinking /opt/calibre/calibre-smtp to /usr/bin/calibre-smtp
	Symlinking /opt/calibre/lrs2lrf to /usr/bin/lrs2lrf
	Symlinking /opt/calibre/ebook-device to /usr/bin/ebook-device
	Symlinking /opt/calibre/calibredb to /usr/bin/calibredb
Setting up command-line completion...
Installing bash completion to /usr/share/bash-completion/calibre
Setting up desktop integration...


You can automate future calibre installs by specifying the
installation directory in the install command itself, like
this:

sudo python -c "import sys; py3 = sys.version_info[0] > 2; u = __import__('urllib.request' if py3 else 'urllib', fromlist=1); exec(u.urlopen('http://status.calibre-ebook.com/linux_installer').read()); main(install_dir='/opt')"

Change /opt above to whatever directory you want calibre to be
automatically installed to
 

Run "calibre" to start calibre 
