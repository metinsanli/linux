#### Wordpress için gereken Apache Web Server ve MySQL Server kurulumu nasıl yapılır?

```sudo apt-get update```

```sudo apt-get install apache2```

```sudo /etc/init.d/apache2 start```

```sudo apt-get install tasksel```
- LAMP server install
- MySQL için “root” şifresi oluşturun. Kurulumu bitirin.
- **/var/www/index.html** oluşacaktır.
- http://locahost adresine girip it works! uyarını al.

```sudo gedit /var/www/info.php``` info.php dosyasını düzenlemek için gedit ile açın.

<?php
phpinfo();
?>

yazıp kaydedin.


- http://localhost/info.php adresini açın.

```sudo apt-get phpmyadmin```
- apache2 konfigürasyonunu seçip devam edin.
- MySQL root password belirleyin.
- http://localhost/phpmyadmin adresini açın.
- username : root password : belirlediğiniz şifre.
- create new database kısmından veri tabanı oluşturun. “wordpress1”

http://wordpress.org/latest.tar.gz adresinden güncel wordpress indirin. Açın.

```gksudo nautilus```
- /var/www kalsörüne wordpress klasörünü kopyalayın.
- http://localhost/wordpress açın.
- Database kısmına “wordpress1”
- username : root
- password şifreniz.
- sitede verilen ekranı wp-config.php dosyası oluşturarak kaydedin.
- wp-config.php dosyasını /var/www/wordpress/ klasörüne kopyalayın.
- site başlığı, admin şifresi ve email girin.

```sudo gedit /etc/apache2/sites-enabled/000-default```  açın
- DocumentRoot /var/www/wordpress olarak değiştirin.


```chown -R www-data:www-data /var/www```
