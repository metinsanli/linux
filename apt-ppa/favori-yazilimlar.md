## Chrome Browser
<br><code>wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add - </code>
<br><code>sudo add-apt-repository "deb http://dl.google.com/linux/chrome/deb/ stable main"</code>
<br><code>sudo apt-get update</code>
<br><code>sudo apt-get install google-chrome-stable</code>
<br>*ilk çalıştırmada login sorunu için :*  <code>env LC_ALL=C google-chrome</code>

## Oracle Java
<br><code>sudo add-apt-repository ppa:webupd8team/java</code>
<br><code>sudo apt-get update</code>
<br><code>sudo apt-get install oracle-java7-installer</code>