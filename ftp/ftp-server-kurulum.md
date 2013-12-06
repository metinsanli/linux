#### FTP Server (VSFTPD) kurulumu ve ayarlamaları

```sudo apt-get install vsftpd```

```sudo gedit /etc/vsftpd.conf```

#anonymous_enable=YES
local_enable=YES
write_enable=YES

```sudo service vsftpd restart```
