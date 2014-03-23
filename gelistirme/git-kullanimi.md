#### github kullanımı

* ince ayarlar :

**git config --global user.name kullanici_adi**

**git config --global user.email kullanici@eposta.com**


* klasör klonlama:

**git clone git@github.com:kullanici/deneme.git**


* ilk kurulumda yapılacaklar :

**touch README.md**

**git init**

**git add README.md**

**git commit -m "ilk mesaj"**

**git remote add origin git@github.com:kullanici/deneme.git**

**git -u origin master**

**git remote set-url origin git@github.com:kullanici/deneme.git**


* klasörde sorun varsa :

**git checkout master**

**git pull --rebase origin** //webden değişiklik yaptığında, localde bunu kullan

-o-

* SSH AYARLARI :

$ **cd ~/.ssh**

$ **ls**

__>>> id_rsa.pub__ veya __id_dsa.pub__ olmalı.

$ **ssh-keygen -t rsa -C "your_email@example.com"**

$ **ssh-add id_rsa**

$ **sudo apt-get install xclip**

$ **xclip -sel clip < ~/.ssh/id_rsa.pub**

$ **ssh -T git@github.com**

-o-

* şifre sormasın :

**git remote set-url origin git@github.com:kullanici/deneme.git**

-o-

* silme :

**git rm dosyaadi**

**git commit -m "silindi"**

**git push -u origin master**

-o-

fatal: CRLF would be replaced by LF in

very new to this so setting core.autocrlf to false didn't make too much sense to me. So for other newbies, go to the config file in you .git folder and add:

[core]
    autocrlf = false

-o-
