#1 btsync yukleme
wget http://syncapp.bittorrent.com/1.4.111/btsync_arm-1.4.111.tar.gz
tar zxvf btsync_arm-1.4.111.tar.gz
sudo cp btsync /usr/bin/
sudo chown root:root /usr/bin/btsync
sudo chmod 755 /usr/bin/btsync

#2 btsync kurulum
wget xx
mkdir -p ~/btsync/.syncsystem
sudo nano /etc/init.d/btsync
sudo chmod 755 /etc/init.d/btsync
sudo /etc/init.d/btsync start #test et
sudo /etc/init.d/btsync stop #durdur, sorun yoksa servisi kur
sudo update-rc.d btsync defaults