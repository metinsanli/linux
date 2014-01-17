* **Chrome Browser**
<br><code>wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add - </code>&larr;
<br><code>sudo add-apt-repository "deb http://dl.google.com/linux/chrome/deb/ stable main"</code>&larr;
<br><code>sudo apt-get update</code>&larr;
<br><code>sudo apt-get install google-chrome-stable</code>&larr;
<br><small>*ilk çalıştırmada oturum acma sorunu için :*</small>&nbsp; <code>env LC_ALL=C google-chrome</code>&larr;
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
