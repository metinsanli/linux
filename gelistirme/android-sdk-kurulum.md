## Android SDK Kurulumu

* [developer.android.com/sdk](http://developer.android.com/sdk) adresine gidin.

* "*DOWNLOAD FOR OTHER PLATFORMS*" açın, "*SDK Tools Only*" tablosundaki "*Linux
32 & 64-bit*" .tgz uzantılı dosyayı indirin.

<img src=""/>

* Terminali açın.

$ `sudo tar -zxvf android-sdk_r22.3-linux.tgz -C /opt` &larr;<br>
$ `cd /opt` &larr;<br>
$ `sudo chmod -R 777 android-sdk-linux` &larr;<br>
$ `cd /opt/android-sdk-linux/tools` &larr;<br>
$ `sh android` &larr; *[Grafik ekranda işaretli gelen güncellemeleri yapın.]* <br>
$ `sudo ln -s /opt/android-sdk-linux/platform-tools/adb /usr/bin/adb` &larr;<br>

* İşlem tamamdır.
