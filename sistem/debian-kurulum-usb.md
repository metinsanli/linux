## USB Bellekten Debian Kurulumu

* Bu işlem için Debian 7.3 (Wheezy) sürümüne ait dosyalar örnek olarak alınmıştır. Bu yöntem, dağıtımların web adresindeki *hd-media* klasörü altında bulunan her *boot.img.gz* dosyası ile yapılabilir.<br>
* Öncelikle kullanmak istediğiniz mimari için gereken dosyayı indirin. [64-bit](http://ftp.nl.debian.org/debian/dists/wheezy/main/installer-amd64/current/images/hd-media/boot.img.gz)&nbsp;
[32-bit](http://ftp.nl.debian.org/debian/dists/wheezy/main/installer-i386/current/images/hd-media/boot.img.gz)
* Kurulum sırasında gereken sistem dosyaları için internet bağlantısı gerekecektir.<br>

__<big>1</big>__ Usb belleği takın. Sistem otomatik olarak bağlayacaktır *(mount edecektir)*.<br> 
__<big>2</big>__ Terminali açın *(Ctrl+Alt+T)*. <span style="color:green">$</span> <span style="color:red">**df**</span> &larr; komutunu yazın, aşağıdakine benzer bir çıktı alınır.<br>

<small> <table><tr><td><small>Dosyasistemi</small></td><td><small>1K-blok</small></td><td><small>Dolu</small></td><td><small>Boş</small></td><td> <small>Kull%</small></td><td><small>Bağlanılan yer</small></td></tr>
<tr><td><small>/dev/sda1</small></td><td><small>122940436</small></td><td><small>26347020</small></td><td><small>90325360</small></td><td><small>23%</small></td> <td><small>/</small></td></tr><tr><td><small>...</small></td></tr>
<td><small>/dev/sdb1</small></td><td><small>976758780</small></td><td><small>743789264</small></td><td><small>232969516</small></td><td><small>77%</small></td> <td><small>/media/tera</small></td>
<tr><td><small>**/dev/sdc1**</small></td><td><small>7801412</small></td><td><small>34160</small></td><td><small>7767252</small></td><td><small>1%</small></td><td><small>/media/metin/usb</small></td></tr></table> </small><br>

__<big>3</big>__ Usb belleğimiz **/dev/sdc1** aygıt ismiyle sisteme bağlanmış. Öncelikle formatlamamız gerekecek.

* <span style="color:green">$</span> <span style="color:red">**sudo umount /dev/sdc1**</span> &larr;
* <span style="color:green">$</span> <span style="color:red">**sudo mkfs.vfat -n usb -I /dev/sdc1**</span> &larr;

__<big>4</big>__ Usb belleği bilgisayardan çıkartıp yeniden sisteme bilgisayara takıyoruz.<br>

* <span style="color:green">$</span> <span style="color:red"> **sudo umount /dev/sdc1**</span> &larr;
* <span style="color:green">$</span><span style="color:red"> **sudo -s**</span> &larr; *[root parolanızı girin.]*
* <span style="color:green">#</span><span style="color:red"> **zcat boot.img.gz > /dev/sdc1**</span> &larr;

__<big>5</big>__ İşlem tamamdır.
