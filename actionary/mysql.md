<h1>MYSQL SERVER</h1>

<br><h3>Nasıl kurulur?</h3>
<blockquote>
<p>Öncelikle <a href="http://dev.mysql.com/downloads/repo/apt/">Download MySQL APT Repository</a> adresinden kullandığınız Ubuntu sürümü için uygun olan <i>.deb</i> uzantılı paketi indirin.</p>
<p><i>Ubuntu 14.04 Trusty Tahr için mysql-apt-config_0.2.1-1ubuntu14.04_all.deb</i><br>
<i>Ubuntu 12.04 Precise Pangolin için mysql-apt-config_0.2.1-1ubuntu12.04_all.deb</i><br>
<i>Debian Wheezy 7 için mysql-apt-config_0.2.1-1debian7_all.deb</i></p>
<p>İndirdiğiniz paket MySQL Server için gereken repository bağlantılarını apt listesine otomatik tanımlayacaktır.</p>
<blockquote>
<b>~$ </b><code>sudo dpkg -i mysql-apt-config_0.2.1-1ubuntu14.04_all.deb</code>
</blockquote>
<i>Which Server version do you wish to receive?</i> seçeneklerinden <b>mysql-5.6</b> seçimini yapın.<br><br>
Şimdi esas kurulum için aşağıdaki komutları kullanabiliriz.

<blockquote>
<b>~$ </b><code>sudo apt-get update</code><br>
<b>~$ </b><code>sudo apt-get install mysql-server</code><br>
<b>~$ </b><code>sudo service mysql start</code>
</blockquote>
</blockquote>

<br><h3>Farklı bir IP'den Mysql Server'a erişimin açılması.</h3>
<blockquote>
<blockquote>
<b>~$ </b><code>sudo nano /etc/mysql/my.cnf</code>
</blockquote>
<p>Açılan editörde şu değişikliği yapın :</p>
<blockquote>
<i>bind-address = 0.0.0.0</i>
</blockquote>
<p>Düzenlemeden sonra sırasıyla; <code>Ctrl+O</code> ardından <code>Enter</code> tuşlarına basarak kaydedin.<code> Ctrl+X</code> tuşlarına basarak editörden çıkın. </p>
<blockquote><b>~$ </b><code>sudo service mysql restart</code></blockquote>
<p>MySQL servisi yeniden başladıktan sonra aşağıdaki seçeneklerden istediğiniz erişim yetkisini ayarlayabilirsiniz.</p>
<p><b>A - </b>Sunucudaki veri tabanı ve tabloların hepsini tüm IP adreslerinin erişimine açmak için :</p>
<blockquote>
<b>~$ </b><code>mysql -u root -p</code><br>
<b>mysql> </b><code>GRANT ALL PRIVILEGES ON &#42;&#46;&#42; &#39;root&#39;@&#39;%&#39; IDENTIFIED BY &#39;Sifre1234&#39;;</code><br>
<b>mysql> </b><code>FLUSH PRIVILEGES;</code><br>
<b>mysql> </b><code>exit</code>
</blockquote>
<p><b>B - </b>Sadece bir tane veri tabanının bir tane tablosunu belirli bir IP adresinin erişimine açmak için :</p>
<p><i>! Bu ayarlama ile daha spesifik erişim izinleri oluşturulabilir.</i></p>
<blockquote>
<b>~$ </b><code>mysql -u root -p</code><br>
<b>mysql> </b><code>GRANT ALL PRIVILEGES ON dbSirket&#46;tblSatis &#39;metin&#39;@&#39;192.168.2.23&#39; IDENTIFIED BY &#39;Sifre1234&#39;;</code><br>
<b>mysql> </b><code>FLUSH PRIVILEGES;</code><br>
<b>mysql> </b><code>exit</code>
</blockquote>
</blockquote>