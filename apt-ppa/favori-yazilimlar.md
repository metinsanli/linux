<div>
<h2>Chrome Browser</h2>
<blockquote>
<code>wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add - </code>
<br><code>sudo add-apt-repository "deb http://dl.google.com/linux/chrome/deb/ stable main"</code>
<br><code>sudo apt-get update</code>
<br><code>sudo apt-get install google-chrome-stable</code>
<br><small>* İlk çalıştırmada oturum acma sorunu yaşanırsa :</small>&nbsp;<code>env LC_ALL=C google-chrome</code>
</blockquote>
</div>

<br><br>
* **Oracle Java**
<br><code>sudo add-apt-repository ppa:webupd8team/java</code>&larr;
<br><code>sudo apt-get update</code>&larr;
<br><code>sudo apt-get install oracle-java7-installer</code>&larr;
<br><br>
* **MKVToolNix**
<br><code>wget -q -O - http://www.bunkus.org/gpg-pub-moritzbunkus.txt | sudo apt-key add - </code>&larr;
<br><code>sudo add-apt-repository "deb http://www.bunkus.org/ubuntu/saucy/ ./"</code>&larr;
<br><code>sudo apt-get update</code>&larr;
<br><code>sudo apt-get install mkvtoolnix mkvtoolnix-gui</code>&larr;
<br><br>
* **Spotify Music Player**
<br><code>sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 94558F59</code>&larr;
<br><code>sudo add-apt-repository "deb http://repository.spotify.com stable non-free"</code>&larr;
<br><code>sudo apt-get update</code>&larr;
<br><code>sudo apt-get install spotify-client</code>&larr;
<br><br>
* **VLC Media Player**
<br><code>sudo add-apt-repository ppa:videolan/stable-daily</code>&larr;
<br><code>sudo apt-get update</code>&larr;
<br><code>sudo apt-get install vlc</code>&larr;
<br><br>
* **Grub Customizer**
<br><code>sudo add-apt-repository ppa:danielrichter2007/grub-customizer</code>&larr;
<br><code>sudo apt-get update</code>&larr;
<br><code>sudo apt-get install grub-customizer</code>&larr;
<br><br>
* **ReText Markdown Editor**
<br><code>sudo add-apt-repository ppa:mitya57</code>&larr;
<br><code>sudo apt-get update</code>&larr;
<br><code>sudo apt-get install retext</code>&larr;
<br><br>
* **Calibre E-book Management**
<table><tr><td>sudo -v && wget -nv --no-check-certificate -O- https://github.com/kovidgoyal/calibre/raw/master/setup/linux-installer.py | sudo python -c "import sys; main=lambda:sys.stderr.write('Download failed\n'); exec(sys.stdin.read()); main()"</td></tr></table>
<br>
* **Create Application Launcher and Add Icon**
<br><code>sudo apt-get install --no-install-recommends gnome-panel</code>&larr;
<br><code>sudo gnome-desktop-item-edit /usr/share/applications/ --create-new</code>&larr;
<br><br>