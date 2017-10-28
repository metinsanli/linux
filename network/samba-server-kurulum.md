## Samba Server Kurulumu
* Gereken paketler kurulur.
<br><code>sudo apt-get update</code> 
<br><code>sudo apt-get install samba samba-common</code>
* Samba sunucusu yeni konfigurasyon için durdurulur.
<br><code>sudo service smbd stop</code>
<br><code>sudo service nmbd stop</code>
* Yeni paylaşılacak klasörler smb.conf dosyasına eklenir.
<br><code>sudo nano /etc/samba/smb.conf</code>
