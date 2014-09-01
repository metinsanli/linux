<body>
<h1>SAMBA SERVER KURULUMU</h1>
<blockquote><b>$</b> = user = <i>metin</i><br><b>~</b> = home klasörü = <i>/home/metin</i></blockquote>

<p><b>Samba server nasıl kurulur?</b></p>
<blockquote><p>Paket yöneticisini güncelleyip samba yazılımını kurun.</p>
<blockquote><b>~$</b>&nbsp;<code>sudo apt-get update</code>&nbsp;<br>
<b>~$</b>&nbsp;<code>sudo apt-get install samba</code>&nbsp;<br>
</blockquote>
</blockquote>

<p><b>Klasör ve dosya paylaşımı nasıl yapılır?</b></p>
<blockquote><p>Bir paylaşım klasörü açıp <i>smb.conf</i> dosyasını düzenleyin.</p>
<blockquote><b>~$</b>&nbsp;<code>mkdir paylasim</code>&nbsp;<br>
<b>~$</b>&nbsp;<code>chown nobody:nogroup -R paylasim</code>&nbsp;<br>
<b>~$</b>&nbsp;<code>sudo nano /etc/samba/smb.conf</code>&nbsp;<br></blockquote>
<p>Açılan editörün en son satırına paylaştırmak istediğiniz klasör ve bilgilerini ekleyin.</p>
<blockquote><code><i>[paylasim]<br>comment = Paylasim klasorum<br>path = /home/metin/paylasim<br>browsable = yes<br>guest ok = yes<br>writable = yes</i></code></blockquote>
<p>Eklemeden sonra sırasıyla; <code>Ctrl+O</code> ardından <code>Enter</code> tuşlarına basarak kaydedin.<code> Ctrl+X</code> tuşlarına basarak editörden çıkın. Yaptığınız değişikliğin geçerli olması için samba servisini yeniden başlatın.</p>
<blockquote><b>~$</b>&nbsp;<code>sudo service samba restart</code>&nbsp;<br></blockquote>
</blockquote>

<p><b>Samba sunucusu nasıl kontrol edilir ?</b></p>
<blockquote><blockquote>
<b>~$</b>&nbsp;<code>sudo service samba status</code>&nbsp;<br>
<b>~$</b>&nbsp;<code>sudo service samba start</code>&nbsp;<br>
<b>~$</b>&nbsp;<code>sudo service samba stop</code>&nbsp;<br>
<b>~$</b>&nbsp;<code>sudo service samba restart</code>&nbsp;<br>
<b>~$</b>&nbsp;<code>sudo service samba force-reload</code>&nbsp;<br>
</blockquote></blockquote>
</body>