```console
pi@pi:~ $ lsblk -o UUID,NAME,PARTUUID
pi@pi:~ $ sudo nano /etc/fstab
```
```UUID=0781-558C /mnt/sandisk auto defaults,uid=pi,gid=pi,noatime,nofail,rw,fmask=0002,dmask=0002,iocharset=utf8```
