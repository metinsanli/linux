<body>
<h1>GLASSFISH APPLICATION SERVER</h1>
<blockquote><b>$</b> = user<br><b>~</b> = home klasörü = <i>/home/metin</i></blockquote>
<b>Nasıl kurulur?</b>
<blockquote>
<blockquote>
<b>~$ </b><code>sudo apt-get update</code><br>
<b>~$ </b><code>apt-get install unzip</code><br>
<b>~$ </b><code>wget download.java.net/glassfish/4.0/release/glassfish-4.0.zip</code><br>
<b>~$ </b><code>sudo unzip glassfish-4.0.zip -d /opt</code><br>
<b>~$ </b><code>cd /opt/glassfish4/bin</code><br>
<b>/opt/glassfish4/bin$ </b><code>sudo ./asadmin start-domain</code>
</blockquote>
</blockquote>

<b>Nasıl otomatik başlatılır?</b>
<blockquote>
<p><i>AÇIKLAMA : "glassfish" isimli (uzantısı olmayan!) bash script dosyasını kullanıyoruz.</i></p>
<blockquote>
<b>~$ </b><code>sudo cp glassfish /etc/init.d/</code><br>
<b>~$ </b><code>cd /etc/init.d</code><br>
<b>/etc/init.d$ </b><code>sudo chmod +x glassfish</code><br>
<b>/etc/init.d$ </b><code>sudo update-rc.d glassfish defaults</code><br>
<s><b>/etc/init.d$ </b><code>sudo reboot</code></s><br>
</blockquote>
</blockquote>

<b>Glassfish Server "admin" şifresi nasıl değiştirilir?</b>
<blockquote>
<blockquote>
<b>~$ </b><code>cd /opt/glassfish4/bin</code><br>
<b>/opt/glassfish4/bin$ </b><code>sudo ./asadmin change-admin-password</code><br>
</blockquote>
</blockquote>

<b>Farklı bir IP'den Glassfish Server'a erişim engelinin kaldırılması.</b>
<blockquote>
<blockquote>
<b>~$ </b><code>cd /opt/glassfish4/bin</code><br>
<b>/opt/glassfish4/bin$ </b><code>sudo ./asadmin enable-secure-admin</code><br>
</blockquote>
</blockquote>

<b>Servisi başlatma/durdurma nasıl yapılır?</b>
<blockquote>
<blockquote>
<b>~$ </b><code>sudo service glassfish start</code><br>
<b>~$ </b><code>sudo service glassfish stop</code><br>
</blockquote>
</blockquote>

</body>