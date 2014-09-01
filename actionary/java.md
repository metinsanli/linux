<!-- Metin Şanlı @ 2014<></> -->
<h1>Ubuntu'ya Oracle JDK nasıl kurulur?</h1>
<p>Anlatımda, Ubuntu 14.04 64bit (Trusty Tahr) işletim sistemli bilgisayara Oracle Java SE Development Kit 8 (64bit) sürümünün kurulumu örnek gösterilmiştir. İşletim sistemi ve JDK versiyonu değişsede yöntem aynı kalacağı için kurulması istenen versiyonun dosya isimlerindeki değişiklikler göz önüne alınarak yöntem tekrar tekrar kullanılabilir. </p>
<p>Öncelikle işletim sisteminizin mimarisini öğrenmek için:<br>
<code>uname -i</code> &nbsp;<i><sup>&rarr;"x86_64" terminal çıktısı alınmalı.</sup></i></p>
<p>Sistemde herhangi bir java sürümü kururlu mu? kontrol edin:<br><code>java -version</code></p>
<p>Java konumu için klasörün yaratılması:<br><code>sudo mkdir -p /usr/local/java</code></p>
